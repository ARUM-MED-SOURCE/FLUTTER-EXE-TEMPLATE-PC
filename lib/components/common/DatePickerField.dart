import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_exe/constants/colors.dart';

class DatePickerField extends StatelessWidget {
  final DateTime? selectedDate;
  final DateFormat dateFormat;
  final Function(BuildContext) onDateSelected;
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
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (label != null) ...[
          Text(label!, style: TextStyle(fontSize: 14, color: AppColors.gray500)),
          const SizedBox(width: 8),
        ],
        GestureDetector(
          onTap: () => onDateSelected(context),
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
                  dateFormat.format(selectedDate ?? DateTime.now()),
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
  final Function(BuildContext) onStartDateSelected;
  final Function(BuildContext) onEndDateSelected;

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
    return Row(
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
  }
} 