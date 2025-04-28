import 'package:flutter/material.dart';
import 'package:flutter_exe/components/common/DatePickerField.dart';
import 'package:flutter_exe/components/common/Dropdown.dart';
import 'package:flutter_exe/components/main/header/DropdownOptions.dart';
import 'package:flutter_exe/constants/colors.dart';
import 'package:flutter_exe/providers/consent/patient_info_provider.dart';
import 'package:flutter_exe/providers/selected_date_provider.dart';
import 'package:flutter_exe/providers/hospital_section_provider.dart';
import 'package:flutter_exe/providers/dropdown_options_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Constants
const _kHeaderHeight = 60.0;
const _kIconSize = 20.0;

class MainHeader extends ConsumerStatefulWidget {
  const MainHeader({super.key});

  @override
  ConsumerState<MainHeader> createState() => _MainHeaderState();
}

class _MainHeaderState extends ConsumerState<MainHeader> {
  final ScrollController _scrollController = ScrollController();
  
  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final selectedDate = ref.watch(selectedDateProvider);
    final hospitalSection = ref.watch(hospitalSectionProvider);
    final dropdownOptions = ref.watch(dropdownOptionsProvider);
    
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
                  controller: _scrollController,
                  thumbVisibility: true,
                  thickness: 4,
                  radius: const Radius.circular(2),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    controller: _scrollController,
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
                                Padding(
                                  padding: const EdgeInsets.only(right: 8),
                                  child: Dropdown<String>(
                                    value: dropdownOptions[type] ?? DropdownOptions.options[type]![0],
                                    items: DropdownOptions.getOptions(type),
                                    onChanged: (value) => 
                                      ref.read(dropdownOptionsProvider.notifier).setSelectedValue(type, value),
                                    itemBuilder: (value) => value,
                                  ),
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
                onSearch: () => ref.read(patientInfoProvider.notifier).getData(),
                onRefresh: () => ref.read(dropdownOptionsProvider.notifier).resetToDefaults(),
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