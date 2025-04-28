import 'package:flutter/cupertino.dart';
import 'package:flutter_exe/components/common/ConsentItem.dart';
import 'package:flutter_exe/components/common/consent_list_view.dart';
import 'package:flutter_exe/model/written_consent_data.dart';
import 'package:flutter_exe/providers/consent/written_consent_provider.dart';
import 'package:logger/logger.dart';

import '../../../../utils/time.dart';

final logger = Logger();

class QuickViewUI extends StatelessWidget {
  const QuickViewUI({super.key});

  @override
  Widget build(BuildContext context) {
    return ConsentListView(
      title: "빠른조회",
      provider: writtenConsentProvider,
      itemBuilder: <WrittenConsentData>(_, index, model) {
        return MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () {},
            child: QuickViewItem.fromModel(model: model),
          ),
        );
      },
    );
  }
}

class QuickViewItem extends StatelessWidget {
  final WrittenConsentData model;

  const QuickViewItem({
    super.key,
    required this.model,
  });

  factory QuickViewItem.fromModel({
    required WrittenConsentData model,
  }) {
    return QuickViewItem(model: model);
  }

  @override
  Widget build(BuildContext context) {
    return TaggedConsentItem(
      id: model.consentStateDisp,
      name: model.consentName,
      type: model.hosType,
      date: formatToYYYY_MM_DD(DateTime.parse(model.createDateTime)),
    );
  }
}
