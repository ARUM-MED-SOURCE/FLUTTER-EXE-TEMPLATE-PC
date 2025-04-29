import 'package:flutter/material.dart';
import 'package:flutter_exe/constants/api_method.dart';
import 'package:flutter_exe/constants/colors.dart';
import 'package:flutter_exe/providers/hospital_section_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'MainComponent.dart';
import 'consent/ConsentSearch.dart';
import 'consent/quickview/QuickViewUI.dart';
import 'consent/quickview/Sidebar.dart';

class ConsentRouter extends ConsumerWidget {
  const ConsentRouter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hospitalSection = ref.watch(hospitalSectionProvider);

    return switch (hospitalSection.methodName) {
      ApiMethod.quickView => const _QuickViewComponent(key: ValueKey('quickView')),
      _ => const _BasicConsentComponent(key: ValueKey('patientInfo'))
    };
  }
}

class _BasicConsentComponent extends StatelessWidget {
  const _BasicConsentComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: MainComponent(),
        ),
        Expanded(
          flex: 1,
          child: ConsentSearch(),
        ),
      ],
    );
  }
}

class _QuickViewComponent extends StatelessWidget {
  const _QuickViewComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.blue50,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.all(16),
              color: AppColors.blue50,
              child: const Sidebar(),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: AppColors.white,
              child: QuickViewUI(),
            ),
          ),
        ],
      ),
    );
  }
}
