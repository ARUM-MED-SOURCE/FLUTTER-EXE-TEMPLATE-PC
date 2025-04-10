import 'package:flutter/material.dart';
import 'package:flutter_exe/constants/api_method.dart';
import 'package:flutter_exe/providers/hospital_section_provider.dart';
import 'package:flutter_list_ui/flutter_list_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../model/prescription_consent_data.dart';
import '../../utils/dummy_data.dart';
import 'MainComponent.dart';
import 'consent/ConsentSearch.dart';

class ConsentRouter extends ConsumerWidget {
  const ConsentRouter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hospitalSection = ref.watch(hospitalSectionProvider);

    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      child: switch (hospitalSection.methodName) {
        ApiMethod.quickView =>
          const _QuickViewComponent(key: ValueKey('quickView')),
        _ => const _BasicConsentComponent(key: ValueKey('patientInfo')),
      },
    );
  }
}

class _BasicConsentComponent extends StatelessWidget {
  const _BasicConsentComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Expanded(
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
    return Info(
      card: InfoCard(
        header: InfoHeader(
          title: '빠른조회',
          titleStyle: Theme.of(context).textTheme.titleLarge,
        ),
        body: InfoList(
          items: ['1', '2', '3'],
          buildItem: (item) => ListTile(
            title: Text(item),
          ),
        ),
      ),
    );
  }
}
