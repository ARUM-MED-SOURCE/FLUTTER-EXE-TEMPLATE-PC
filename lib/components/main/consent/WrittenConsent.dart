import 'package:flutter/material.dart';
import 'package:flutter_exe/components/common/ConsentItem.dart';
import 'package:flutter_exe/components/common/consent_list_view.dart';
import 'package:flutter_exe/model/writtenscription_consent_data.dart';
import 'package:flutter_exe/providers/consent/written_consent_provider.dart';
import 'package:flutter_exe/utils/time.dart';

class WrittenConsent extends StatelessWidget {
  const WrittenConsent({super.key});

  @override
  Widget build(BuildContext context) {
    return ConsentListView(
      provider: writtenConsentProvider,
      itemBuilder: <WrittenConsentData>(_, index, model) {
        return GestureDetector(
          onTap: () {},
          child: WrittenScriptionConsentItem.fromModel(
            model: model,
          ),
        );
      },
      title: '작성동의서',
    );
  }
}

class WrittenScriptionConsentItem extends StatelessWidget {
  final WrittenConsentData model;

  const WrittenScriptionConsentItem({
    super.key,
    required this.model,
  });

  factory WrittenScriptionConsentItem.fromModel({
    required WrittenConsentData model,
  }){
    return WrittenScriptionConsentItem(model: model);
  }

  @override
  Widget build(BuildContext context) {
    return TaggedConsentItem(
        type: model.consentStateDisp,
        date: formatToYYYY_MM_DD(DateTime.parse(model.createDateTime)),
        name: model.consentName,
        id: model.consentMstRid.toString(),
    );
  }

}