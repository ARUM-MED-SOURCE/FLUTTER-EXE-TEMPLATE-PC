import 'package:flutter/material.dart';
import 'package:flutter_exe/components/common/ConsentItem.dart';
import 'package:flutter_exe/constants/colors.dart';
import 'package:flutter_exe/model/written_consent.dart';
import 'package:flutter_list_ui/flutter_list_ui.dart';

class WrittenConsent extends StatelessWidget {
  final List<WrittenConsentData> consents;

  const WrittenConsent({
    super.key,
    required this.consents,
  });

  @override
  Widget build(BuildContext context) {
    return Info(
      card: InfoCard(
        header: InfoHeader(
          title: '작성동의서',
          titleStyle: Theme.of(context).textTheme.titleLarge,
        ),
        body: InfoList<WrittenConsentData>(
          items: consents.isEmpty
              ? [WrittenConsentData(type: '', date: '', name: '', id: '')]
              : consents,
          buildItem: (consent) => consents.isEmpty
              ? _EmptyConsentItem()
              : TaggedConsentItem(
                  type: consent.type,
                  date: consent.date,
                  name: consent.name,
                  id: consent.id,
                ),
          backgroundColor: Colors.white,
          contentPadding: EdgeInsets.zero,
        ),
        backgroundColor: Colors.white,
        isRound: true,
        showBorder: false,
      ),
    );
  }
}

class _EmptyConsentItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: Center(
        child: Text(
          '작성동의서가 없습니다.',
          style: TextStyle(
            color: AppColors.gray500,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
