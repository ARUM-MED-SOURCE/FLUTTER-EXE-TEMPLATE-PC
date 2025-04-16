import 'package:flutter/material.dart';
import 'package:flutter_exe/components/common/DatePickerField.dart';
import 'package:flutter_exe/components/main/header/DropdownOptions.dart';
import 'package:flutter_exe/constants/colors.dart';
import 'package:flutter_exe/dataloaders/patientinfo_dataloader.dart';
import 'package:flutter_exe/providers/selected_date_provider.dart';
import 'package:flutter_exe/providers/hospital_section_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Constants
const _kHeaderHeight = 60.0;
const _kDropdownWidth = 150.0;
const _kDropdownItemHeight = 38.0;
const _kDropdownItemPadding = EdgeInsets.symmetric(horizontal: 12, vertical: 8);
const _kDropdownBorderRadius = 4.0;
const _kDropdownElevation = 4.0;
const _kDropdownOffset = Offset(0, 40);
const _kIconSize = 20.0;
const _kTextFontSize = 14.0;
const _kMinDropdownWidth = 100.0;

class MainHeader extends ConsumerStatefulWidget {
  const MainHeader({super.key});

  @override
  ConsumerState<MainHeader> createState() => _MainHeaderState();
}

class _MainHeaderState extends ConsumerState<MainHeader> {
  OverlayEntry? _overlayEntry;
  DropdownType? _activeDropdown;
  
  @override
  void dispose() {
    _removeOverlay();
    super.dispose();
  }

  void _removeOverlay() {
    if (!mounted) return;
    
    _overlayEntry?.remove();
    _overlayEntry = null;
    setState(() => _activeDropdown = null);
  }

  void _showOverlay(DropdownType type) {
    _removeOverlay();
    _activeDropdown = type;
    _overlayEntry = _createOverlayEntry(type);
    Overlay.of(context).insert(_overlayEntry!);
  }

  OverlayEntry _createOverlayEntry(DropdownType type) {
    final items = DropdownOptions.getOptions(type);
    final selectedValue = DropdownOptions.getSelectedValue(type);
    final layerLink = DropdownOptions.layerLinks[type];

    return OverlayEntry(
      builder: (context) => _DropdownOverlay(
        onDismiss: _removeOverlay,
        layerLink: layerLink!,
        items: items,
        selectedValue: selectedValue,
        type: type,
        onItemSelected: (item) {
          setState(() {
            DropdownOptions.setSelectedValue(type, item);
            _activeDropdown = null;
          });
          _removeOverlay();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final selectedDate = ref.watch(selectedDateProvider);
    final hospitalSection = ref.watch(hospitalSectionProvider);
    
    return _HeaderContainer(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isWideScreen = constraints.maxWidth > 800;
          
          return Row(
            children: [
              if (isWideScreen) ...[
                _DatePickerSection(
                  selectedDate: selectedDate,
                  onDateSelected: (date) => 
                    ref.read(selectedDateProvider.notifier).setDate(date),
                ),
              ],
              
              Expanded(
                child: Scrollbar(
                  controller: ScrollController(),
                  thumbVisibility: true,
                  thickness: 4,
                  radius: const Radius.circular(2),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    controller: ScrollController(),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              if (!isWideScreen) ...[
                                _DatePickerSection(
                                  selectedDate: selectedDate,
                                  onDateSelected: (date) => 
                                    ref.read(selectedDateProvider.notifier).setDate(date),
                                ),
                              ],
                              
                              ...DropdownOptions.getVisibleTypes(hospitalSection).map((type) => 
                                _DropdownButton(
                                  value: DropdownOptions.getSelectedValue(type),
                                  type: type,
                                  isActive: _activeDropdown == type,
                                  onTap: () => _showOverlay(type),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              
              _ActionButtons(
                onSearch: () => ref.invalidate(patientInfoLoaderProvider),
                onRefresh: () {},
              ),
            ],
          );
        },
      ),
    );
  }
}

class _HeaderContainer extends StatelessWidget {
  final Widget child;

  const _HeaderContainer({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: _kHeaderHeight,
      decoration: const BoxDecoration(
        color: AppColors.white,
        border: Border(
          bottom: BorderSide(
            color: AppColors.gray100,
            width: 1,
          ),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: child,
    );
  }
}

class _DatePickerSection extends StatelessWidget {
  final DateTime selectedDate;
  final ValueChanged<DateTime> onDateSelected;

  const _DatePickerSection({
    required this.selectedDate,
    required this.onDateSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DatePickerField(
          selectedDate: selectedDate,
          dateFormat: dateFormat,
          onDateSelected: onDateSelected,
        ),
        const SizedBox(width: 8),
      ],
    );
  }
}

class _DropdownOverlay extends StatelessWidget {
  final VoidCallback onDismiss;
  final LayerLink layerLink;
  final List<String> items;
  final String selectedValue;
  final DropdownType type;
  final ValueChanged<String> onItemSelected;

  const _DropdownOverlay({
    required this.onDismiss,
    required this.layerLink,
    required this.items,
    required this.selectedValue,
    required this.type,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: GestureDetector(
            onTap: onDismiss,
            child: Container(color: Colors.transparent),
          ),
        ),
        Positioned(
          width: _kDropdownWidth,
          child: CompositedTransformFollower(
            link: layerLink,
            showWhenUnlinked: false,
            offset: _kDropdownOffset,
            child: Material(
              elevation: _kDropdownElevation,
              borderRadius: BorderRadius.circular(_kDropdownBorderRadius),
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(_kDropdownBorderRadius),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: items.map((item) => _DropdownItem(
                    item: item,
                    isSelected: item == selectedValue,
                    onTap: () => onItemSelected(item),
                  )).toList(),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _DropdownItem extends StatelessWidget {
  final String item;
  final bool isSelected;
  final VoidCallback onTap;

  const _DropdownItem({
    required this.item,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: _kDropdownItemPadding,
        decoration: BoxDecoration(
          color: isSelected ? AppColors.blue50 : Colors.transparent,
          borderRadius: BorderRadius.circular(_kDropdownBorderRadius),
        ),
        child: Text(
          item,
          style: TextStyle(
            fontSize: _kTextFontSize,
            color: isSelected ? AppColors.blue300 : AppColors.gray300,
          ),
        ),
      ),
    );
  }
}

class _DropdownButton extends StatelessWidget {
  final String value;
  final DropdownType type;
  final bool isActive;
  final VoidCallback onTap;

  const _DropdownButton({
    required this.value,
    required this.type,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: CompositedTransformTarget(
        link: DropdownOptions.layerLinks[type]!,
        child: InkWell(
          onTap: onTap,
          child: Container(
            constraints: const BoxConstraints(minWidth: _kMinDropdownWidth),
            height: _kDropdownItemHeight,
            padding: _kDropdownItemPadding,
            decoration: BoxDecoration(
              border: Border.all(
                color: isActive ? AppColors.blue300 : AppColors.gray100,
              ),
              borderRadius: BorderRadius.circular(_kDropdownBorderRadius),
              color: isActive ? AppColors.blue50 : AppColors.white,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  value,
                  style: TextStyle(
                    fontSize: _kTextFontSize,
                    color: isActive ? AppColors.blue300 : AppColors.gray300,
                  ),
                ),
                const SizedBox(width: 4),
                Icon(
                  Icons.arrow_drop_down,
                  size: _kIconSize,
                  color: isActive ? AppColors.blue300 : AppColors.gray300,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ActionButtons extends StatelessWidget {
  final VoidCallback onSearch;
  final VoidCallback onRefresh;

  const _ActionButtons({
    required this.onSearch,
    required this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _IconButton(icon: Icons.search, onPressed: onSearch),
        _IconButton(icon: Icons.refresh, onPressed: onRefresh),
      ],
    );
  }
}

class _IconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const _IconButton({
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        icon,
        size: _kIconSize,
        color: AppColors.gray400,
      ),
      onPressed: onPressed,
    );
  }
}