import 'package:flutter/material.dart';
import 'package:flutter_exe/components/common/ConsentItem.dart';
import 'package:flutter_exe/components/common/consent_list_view.dart';
import 'package:flutter_exe/model/written_consent_data.dart';
import 'package:flutter_exe/providers/consent/written_consent_provider.dart';
import 'package:flutter_exe/utils/time.dart';
import 'package:logger/logger.dart';

final logger = Logger();

class WrittenConsent extends StatelessWidget {
  const WrittenConsent({super.key});

  @override
  Widget build(BuildContext context) {
    return ConsentListView(
      title: '작성동의서',
      provider: writtenConsentProvider,
      itemBuilder: <WrittenConsentData>(_, index, model) {
        return
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
            onTap: () {
              logger.i("작성동의서 열기");
            },
            child: WrittenScriptionConsentItem.fromModel(
              model: model,
            ),
                    ),
          );
      },
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