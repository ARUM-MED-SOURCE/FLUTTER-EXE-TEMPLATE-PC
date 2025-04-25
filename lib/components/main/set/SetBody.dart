import 'package:flutter/material.dart';
import 'package:flutter_exe/constants/colors.dart';
import 'package:flutter_exe/components/main/set/SetHeader.dart';
import 'package:flutter_exe/components/main/set/SetSide.dart';
import 'package:flutter_exe/components/main/set/SetList.dart';

class SetBody extends StatefulWidget {
  const SetBody({super.key});

  @override
  State<SetBody> createState() => SetBodyState();
}

class SetBodyState extends State<SetBody> {
  final GlobalKey<SetSideState> _sideKey = GlobalKey();
  final GlobalKey<SetListState> _listKey = GlobalKey();

  void _handleFormRegister() {
    final selectedForms = _listKey.currentState?.getSelectedForms();
    if (selectedForms == null || selectedForms.isEmpty) return;

    _sideKey.currentState?.addNewGroup(selectedForms);
    _listKey.currentState?.clearSelectedForms();
  }

  void _handleGroupDelete() {
    _sideKey.currentState?.deleteSelectedGroup();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue50,
      appBar: AppBar(
        title: const Text('세트 동의서 관리'),
        backgroundColor: AppColors.blue400,
        foregroundColor: AppColors.white,
      ),
      body: Column(
        children: [
          SetHeader(
            onRegister: _handleFormRegister,
            onDeleteGroup: _handleGroupDelete,
          ),
          Expanded(
            child: Row(
              children: [
                SetSide(key: _sideKey),
                Expanded(child: SetList(key: _listKey)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}