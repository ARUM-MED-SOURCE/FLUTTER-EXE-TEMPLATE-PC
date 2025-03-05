import 'package:flutter/material.dart';
import 'package:flutter_exe/constants/colors.dart';
import 'package:intl/intl.dart';  // intl 패키지 import

class MainHeader extends StatefulWidget {
  const MainHeader({super.key});

  @override
  State<MainHeader> createState() => _MainHeaderState();
}

class _MainHeaderState extends State<MainHeader> {
  DateTime? selectedDate;
  final DateFormat dateFormat = DateFormat('yyyy-MM-dd', 'ko_KR');
  String selectedDepartment = '병동';
  String selectedProject = '신경과';
  String selectedConfirm = '담당의사';

  // 드롭다운 옵션 리스트를 상수로 정의
  final List<String> departmentItems = ['병동', '외래', '응급실'];
  final List<String> projectItems = ['신경과', '내과', '외과', '소아과'];
  final List<String> confirmItems = ['담당의사', '전공의', '전문의'];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            color: Colors.grey.withOpacity(0.2),
            width: 1,
          ),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          // 날짜 선택 버튼
          InkWell(
            onTap: () => _selectDate(context),
            child: Container(
              width: 150,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.gray100),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    selectedDate != null 
                      ? dateFormat.format(selectedDate!)
                      : dateFormat.format(DateTime.now()),
                    style: const TextStyle(fontSize: 14),
                  ),
                  const Icon(
                    Icons.calendar_today,
                    size: 16,
                    color: AppColors.gray200,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 8),
          
          //  병동 드롭다운
          _buildDropdown(selectedDepartment, departmentItems, (value) {
            setState(() => selectedDepartment = value!);
          }),
          const SizedBox(width: 8),
          
          // 신경과 드롭다운
          _buildDropdown(selectedProject, projectItems, (value) {
            setState(() => selectedProject = value!);
          }),
          const SizedBox(width: 8),
          
          // 담당의사 드롭다운
          _buildDropdown(selectedConfirm, confirmItems, (value) {
            setState(() => selectedConfirm = value!);
          }),
          
          const Spacer(),
          
          // 검색 아이콘
          IconButton(
            icon: const Icon(
              Icons.search,
              size: 20,
              color: AppColors.gray400,
            ),
            onPressed: () {},
          ),
          
          // 새로고침 아이콘
          IconButton(
            icon: const Icon(
              Icons.refresh,
              size: 20,
              color: AppColors.gray400,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildDropdown(String value, List<String> items, Function(String?) onChanged) {
    return Container(
      width: 150,
      height: 38,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.gray100),
        borderRadius: BorderRadius.circular(4),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: DropdownButton<String>(
        isExpanded: true,
        value: value,
        items: items.map((String item) {
          return DropdownMenuItem<String>(
            value: item,
            child: Text(item, style: const TextStyle(fontSize: 14, color: AppColors.gray300)),
          );
        }).toList(),
        onChanged: onChanged,
        underline: Container(),
        icon: const Icon(
          Icons.arrow_drop_down,
          size: 20,
          color: AppColors.gray300,
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2030, 12, 31),
      locale: const Locale('ko', 'KR'),
    );

    if (picked != null) {
      setState(() {
        selectedDate = picked;
      });
    }
  }
}