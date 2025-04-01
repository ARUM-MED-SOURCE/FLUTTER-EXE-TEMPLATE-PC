import 'package:flutter/material.dart';
import 'package:flutter_exe/components/main/MainComponent.dart';
import 'package:flutter_exe/components/main/consent/ConsentSearch.dart';
import 'package:flutter_exe/components/navigation/Topbar.dart';
import 'package:flutter_exe/layout/default_layout.dart';
import 'package:flutter_exe/model/prescription_consent_data.dart';
import 'package:flutter_exe/utils/dummy_data.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  

  @override
  Widget build(BuildContext context) {
    return const DefaultLayout(
      child: Column(
        children: [
          TopBar(),
          _Body(),
        ],
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(
            flex: 2,
            child: MainComponent(),
          ),
          Expanded(
            flex: 1,
            child: ConsentSearch(
              searchResults: prescriptionConsentData
                  .map(PrescriptionConsentData.fromJson)
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
