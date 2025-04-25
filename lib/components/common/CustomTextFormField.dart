import 'package:flutter/material.dart';
import 'package:flutter_exe/constants/colors.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final String initialValue;
  final bool autoFocus;
  final bool obscureText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final Function(String)? onChanged;
  final Function()? onSuffixIconPressed;
  final EdgeInsetsGeometry? contentPadding;
  final bool isDense;
  final InputDecoration? decoration;

  const CustomTextFormField({super.key,
    required this.hintText,
    required this.initialValue,
    this.autoFocus = false,
    this.obscureText = false,
    this.prefixIcon,
    this.suffixIcon,
    this.onChanged,
    this.onSuffixIconPressed,
    this.contentPadding,
    this.isDense = false,
    this.decoration,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      autofocus: autoFocus,
      obscureText: obscureText,
      decoration: decoration?.copyWith(
        hintText: hintText,
        isDense: isDense,
        contentPadding: contentPadding ?? const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        prefixIcon: prefixIcon != null ? Icon(prefixIcon, color: AppColors.gray200) : null,
        suffixIcon: suffixIcon != null ? IconButton(
          onPressed: onSuffixIconPressed,
          icon: Icon(suffixIcon),
        ) : null,
      ) ?? InputDecoration(
        hintText: hintText,
        isDense: isDense,
        contentPadding: contentPadding ?? const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        prefixIcon: prefixIcon != null ? Icon(prefixIcon, color: AppColors.gray200) : null,
        suffixIcon: suffixIcon != null ? IconButton(
          onPressed: onSuffixIconPressed,
          icon: Icon(suffixIcon),
        ) : null,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColors.gray100),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColors.blue300),
        ),
      ),
      onChanged: onChanged,
    );
  }
}
