import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_exe/constants/colors.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_exe/providers/selected_date_provider.dart';

final DateFormat dateFormat = DateFormat('yyyy-MM-dd', 'ko_KR');

class DatePickerField extends ConsumerWidget {
  final DateTime? selectedDate;
  final DateFormat dateFormat;
  final Function(DateTime) onDateSelected;
  final String? label;
  final double width;

  const DatePickerField({
    required this.selectedDate,
    required this.dateFormat,
    required this.onDateSelected,
    this.label,
    this.width = 150,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedDate = ref.watch(selectedDateProvider);
    return Row(
      children: [
        if (label != null) ...[
          Text(label!, style: TextStyle(fontSize: 14, color: AppColors.gray500)),
          const SizedBox(width: 8),
        ],
        GestureDetector(
          onTap: () async {
            final DateTime? picked = await showDatePicker(
              context: context,
              initialDate: selectedDate,
              firstDate: DateTime(2000),
              lastDate: DateTime(2030, 12, 31),
              locale: const Locale('ko', 'KR'),
            );
            if (picked != null) {
              onDateSelected(picked);
            }
          },
          child: Container(
            width: width,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.gray100),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  dateFormat.format(selectedDate),
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
      ],
    );
  }
}

class DateRangePickerField extends StatelessWidget {
  final DateTime? startDate;
  final DateTime? endDate;
  final DateFormat dateFormat;
  final Function(DateTime) onStartDateSelected;
  final Function(DateTime) onEndDateSelected;

  const DateRangePickerField({
    required this.startDate,
    required this.endDate,
    required this.dateFormat,
    required this.onStartDateSelected,
    required this.onEndDateSelected,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isNarrow = constraints.maxWidth < 300;
        
        if (isNarrow) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DatePickerField(
                selectedDate: startDate,
                dateFormat: dateFormat,
                onDateSelected: onStartDateSelected,
                label: '시작일',
              ),
              const SizedBox(height: 8),
              DatePickerField(
                selectedDate: endDate,
                dateFormat: dateFormat,
                onDateSelected: onEndDateSelected,
                label: '종료일',
              ),
            ],
          );
        }

        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            DatePickerField(
              selectedDate: startDate,
              dateFormat: dateFormat,
              onDateSelected: onStartDateSelected,
            ),
            const SizedBox(width: 8),
            Text('~', style: TextStyle(fontSize: 14, color: AppColors.gray500)),
            const SizedBox(width: 8),
            DatePickerField(
              selectedDate: endDate,
              dateFormat: dateFormat,
              onDateSelected: onEndDateSelected,
            ),
          ],
        );
      },
    );
  }
} 