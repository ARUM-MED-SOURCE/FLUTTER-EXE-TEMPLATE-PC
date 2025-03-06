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
  OverlayEntry? _overlayEntry;
  String? _activeDropdown;

  // 각 드롭다운을 위한 LayerLink
  final LayerLink _departmentLink = LayerLink();
  final LayerLink _projectLink = LayerLink();
  final LayerLink _confirmLink = LayerLink();

  // 드롭다운 옵션 리스트를 상수로 정의
  final List<String> departmentItems = ['병동', '외래', '응급실'];
  final List<String> projectItems = ['신경과', '내과', '외과', '소아과'];
  final List<String> confirmItems = ['담당의사', '전공의', '전문의'];

  @override
  void dispose() {
    _removeOverlay();
    super.dispose();
  }

  void _removeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  void _showOverlay(String type) {
    _removeOverlay();
    _activeDropdown = type;
    _overlayEntry = _createOverlayEntry(type);
    Overlay.of(context).insert(_overlayEntry!);
  }

  LayerLink _getLayerLink(String type) {
    switch (type) {
      case 'department':
        return _departmentLink;
      case 'project':
        return _projectLink;
      case 'confirm':
        return _confirmLink;
      default:
        return _departmentLink;
    }
  }

  OverlayEntry _createOverlayEntry(String type) {
    final items = type == 'department' ? departmentItems :
                  type == 'project' ? projectItems : confirmItems;
    final selectedValue = type == 'department' ? selectedDepartment :
                         type == 'project' ? selectedProject : selectedConfirm;
    final layerLink = _getLayerLink(type);

    return OverlayEntry(
      builder: (context) => Positioned(
        width: 150,
        child: CompositedTransformFollower(
          link: layerLink,
          showWhenUnlinked: false,
          offset: const Offset(0, 40),
          child: Material(
            elevation: 4,
            borderRadius: BorderRadius.circular(4),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: items.map((item) {
                  final isSelected = item == selectedValue;
                  return InkWell(
                    onTap: () {
                      setState(() {
                        if (type == 'department') {
                          selectedDepartment = item;
                        } else if (type == 'project') {
                          selectedProject = item;
                        } else {
                          selectedConfirm = item;
                        }
                      });
                      _removeOverlay();
                    },
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      decoration: BoxDecoration(
                        color: isSelected ? AppColors.blue50 : Colors.transparent,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        item,
                        style: TextStyle(
                          fontSize: 14,
                          color: isSelected ? AppColors.blue300 : AppColors.gray300,
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ),
      ),
    );
  }

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
          
          // 병동 드롭다운
          CompositedTransformTarget(
            link: _departmentLink,
            child: _buildDropdownButton(
              selectedDepartment,
              'department',
              '병동',
            ),
          ),
          const SizedBox(width: 8),
          
          // 신경과 드롭다운
          CompositedTransformTarget(
            link: _projectLink,
            child: _buildDropdownButton(
              selectedProject,
              'project',
              '신경과',
            ),
          ),
          const SizedBox(width: 8),
          
          // 담당의사 드롭다운
          CompositedTransformTarget(
            link: _confirmLink,
            child: _buildDropdownButton(
              selectedConfirm,
              'confirm',
              '담당의사',
            ),
          ),
          
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

  Widget _buildDropdownButton(String value, String type, String label) {
    final isActive = _activeDropdown == type;
    return InkWell(
      onTap: () => _showOverlay(type),
      child: Container(
        width: 150,
        height: 38,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          border: Border.all(
            color: isActive ? AppColors.blue300 : AppColors.gray100,
          ),
          borderRadius: BorderRadius.circular(4),
          color: isActive ? AppColors.blue50 : Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              value,
              style: TextStyle(
                fontSize: 14,
                color: isActive ? AppColors.blue300 : AppColors.gray300,
              ),
            ),
            Icon(
              Icons.arrow_drop_down,
              size: 20,
              color: isActive ? AppColors.blue300 : AppColors.gray300,
            ),
          ],
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