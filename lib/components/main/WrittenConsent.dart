import 'package:flutter/material.dart';
import 'package:flutter_exe/constants/colors.dart';
import 'package:flutter_exe/components/common/container/Info.dart';
import 'package:flutter_exe/components/common/container/InfoCard.dart';
import 'package:flutter_exe/components/common/container/InfoHeader.dart';
import 'package:flutter_exe/components/common/container/InfoList.dart';
import 'package:flutter_exe/components/common/ConsentItem.dart';
import 'package:flutter_exe/utils/dummy_data.dart';
import 'package:flutter_exe/model/writtenscription_consent_data.dart';


class WrittenConsent extends Info {
  WrittenConsent({super.key}) : super(
    card: _WrittenConsentCard(
        header: _WrittenConsentHeader(title: '작성동의서'),
        body: _WrittenConsentList(
          consents: writtenConsentData.map(WrittenConsentData.fromJson).toList(),
        ),
      ),
    );
  }

class _WrittenConsentCard extends InfoCard {
  const _WrittenConsentCard({
    required InfoHeader header,
    required InfoList body,
    super.key,
  }) : super(header: header, body: body);
}

class _WrittenConsentHeader extends InfoHeader {
  const _WrittenConsentHeader({
    required String title,
    super.key,
  }) : super(title: title);
}



class _WrittenConsentList extends InfoList<WrittenConsentData> {
  final List<WrittenConsentData> consents;
  const _WrittenConsentList({
    required this.consents,
    super.key,
  }) : super(items: consents);


  @override
  Widget build(BuildContext context) {
    if (consents.isEmpty) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    if (consents.isEmpty) {
      return const Center(
        child: Text('작성동의서가 없습니다.',
          style: TextStyle(
            color: AppColors.gray500,
            fontSize: 14,
          ),
        ),
      );
    }

    return super.build(context);
  }

  Widget buildItem(WrittenConsentData consent) {
    return TaggedConsentItem(
      type: consent.type,
      date: consent.date,
      name: consent.name,
      id: '',
    );
  }
}




 