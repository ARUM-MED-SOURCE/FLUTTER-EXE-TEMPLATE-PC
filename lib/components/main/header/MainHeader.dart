import 'package:flutter/material.dart';
import 'package:flutter_exe/constants/colors.dart';
import 'package:intl/intl.dart';  // intl 패키지 import
import 'package:flutter_exe/components/common/DatePickerField.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_exe/dataloaders/patientinfo_dataloader.dart';
import 'package:flutter_exe/components/main/header/DropdownOptions.dart';




class MainHeader extends ConsumerStatefulWidget {
  const MainHeader({super.key});

  @override
  ConsumerState<MainHeader> createState() => _MainHeaderState();
}

class _MainHeaderState extends ConsumerState<MainHeader> {
  DateTime? selectedDate;
  final DateFormat dateFormat = DateFormat('yyyy-MM-dd', 'ko_KR');
  
  
  final Map<DropdownType, String> selectedValues = Map.fromEntries(
    DropdownType.values.map((dropdownType) => MapEntry(dropdownType, DropdownOptions.getItemsForType(dropdownType)[0]))
  );

  

  OverlayEntry? _overlayEntry;
  DropdownType? _activeDropdown;

  // LayerLink를 Map으로 관리
  final Map<DropdownType, LayerLink> _layerLinks = Map.fromEntries(
    DropdownType.values.map((dropdownType) => MapEntry(dropdownType, LayerLink()))
  );

  @override
  void dispose() {
    _removeOverlay();
    super.dispose();
  }

  void _removeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  void _showOverlay(DropdownType type) {
    _removeOverlay();
    _activeDropdown = type;
    _overlayEntry = _createOverlayEntry(type);
    Overlay.of(context).insert(_overlayEntry!);
  }

  

  OverlayEntry _createOverlayEntry(DropdownType type) {
    final items = DropdownOptions.getItemsForType(type);
    final selectedValue = selectedValues[type];
    final layerLink = _layerLinks[type];

    return OverlayEntry(
      builder: (context) => Positioned(
        width: 150,
        child: CompositedTransformFollower(
          link: layerLink!,
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
                children: items.map((item) => _buildDropdownItem(item, selectedValue, type)).toList(),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDropdownItem(String item, String? selectedValue, DropdownType type) {
    final isSelected = item == selectedValue;
    return InkWell(
      onTap: () {
        setState(() {
          selectedValues[type] = item;
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
          DatePickerField(
            selectedDate: selectedDate,
            dateFormat: dateFormat,
            onDateSelected: _selectDate,
          ),
          const SizedBox(width: 8),
          
          ...DropdownType.values.map((type) => Padding(
            padding: const EdgeInsets.only(right: 8),
            child: CompositedTransformTarget(
              link: _layerLinks[type]!,
              child: _buildDropdownButton(
                selectedValues[type]!,
                type,
              ),
            ),
          )),
          
          const Spacer(),
          
          _buildIconButton(Icons.search, () {
            ref.read(patientInfoLoaderProvider.future);
          }),
          _buildIconButton(Icons.refresh, () {}),
        ],
      ),
    );
  }

  Widget _buildDropdownButton(String value, DropdownType type) {
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

  Widget _buildIconButton(IconData icon, VoidCallback onPressed) {
    return IconButton(
      icon: Icon(
        icon,
        size: 20,
        color: AppColors.gray400,
      ),
      onPressed: onPressed,
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