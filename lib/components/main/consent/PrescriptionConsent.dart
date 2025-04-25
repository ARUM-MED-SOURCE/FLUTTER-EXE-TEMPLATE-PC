import 'package:flutter/material.dart';
import 'package:flutter_exe/components/common/ConsentItem.dart';
import 'package:flutter_exe/components/common/InfoListCard.dart';
import 'package:flutter_exe/components/common/Skeleton.dart';
import 'package:flutter_exe/constants/colors.dart';
import 'package:flutter_exe/dataloaders/prescription_consent_dataloader.dart';
import 'package:flutter_exe/model/prescription_consent_data.dart';
import 'package:flutter_exe/providers/selected_consents_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';



class PrescriptionConsent extends ConsumerWidget {
  const PrescriptionConsent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final prescriptionConsentData = ref.watch(prescriptionConsentDataLoaderProvider);

    return prescriptionConsentData.when(
      data: (response) => InfoListCard<PrescriptionConsentData>(
        title: '처방동의서',
        items: response?.resultData ?? [],
        buildItem: (prescription) => Consumer(
          builder: (context, ref, _) {
            return CheckableConsentItem(
              name: prescription.formName ?? "",
              id: prescription.formId.toString(),
              isSelected: ref
                  .watch(selectedConsentsProvider)
                  .contains(prescription.formId.toString()),
              onSelected: () {
                final notifier = ref.read(selectedConsentsProvider.notifier);
                notifier.toggleConsent(prescription.formId.toString());
              },
            );
          },
        ),
        buildEmptyItem: (context, items) => Container(
          padding: const EdgeInsets.symmetric(vertical: 32),
          alignment: Alignment.center,
          child: const Column(
            children: [
              Icon(
                Icons.description_outlined,
                size: 48,
                color: AppColors.gray400,
              ),
              SizedBox(height: 16),
              Text(
                '처방동의서가 없습니다',
                style: TextStyle(
                  color: AppColors.gray500,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
        physics: const BouncingScrollPhysics(),
      ),
      loading: () => InfoListCard<PrescriptionConsentData>(
        title: '처방동의서',
        items: const [],
        buildItem: (prescription) => CheckableConsentItem(
          name: prescription.formName ?? "",
          id: prescription.formId.toString(),
          isSelected: false,
          onSelected: () {},
        ),
        buildEmptyItem: (context, items) => const SizedBox(),
        isLoading: true,
        itemBuilder: (prescription) => const ConsentSkeletonItem(),
        emptyItemBuilder: (index) => const PrescriptionConsentData(
          formId: 0,
          formName: '',
        ),
        itemCount: 4,
      ),
      error: (error, stack) => InfoListCard<PrescriptionConsentData>(
        title: '처방동의서',
        items: const [],
        buildItem: (prescription) => CheckableConsentItem(
          name: prescription.formName ?? "",
          id: prescription.formId.toString(),
          isSelected: false,
          onSelected: () {},
        ),
        buildEmptyItem: (context, items) => const SizedBox(),
        hasError: true,
        errorMessage: error.toString(),
        onRetry: () {
          ref.invalidate(prescriptionConsentDataLoaderProvider);
        },
      ),
    );
  }
}
