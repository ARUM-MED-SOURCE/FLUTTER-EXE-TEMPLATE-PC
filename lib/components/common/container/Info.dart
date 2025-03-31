import 'package:flutter/material.dart';
import 'package:flutter_exe/constants/colors.dart';
import 'package:flutter_exe/components/common/container/InfoCard.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
abstract class Info extends ConsumerStatefulWidget {
  final InfoCard card;
  final String paddingOption;
  final double paddingVertical;
  final double paddingHorizontal;
  const Info({
    super.key,
    required this.card,
    this.paddingOption = 'all',
    this.paddingVertical = 8.0,
    this.paddingHorizontal = 8.0,
  });


  @override
  ConsumerState<Info> createState() => _InfoState();
}

class _InfoState extends ConsumerState<Info> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.blue50,
      padding: widget.paddingOption == 'all' 
        ? EdgeInsets.all(widget.paddingVertical)
        : EdgeInsets.symmetric(
            vertical: widget.paddingVertical,
            horizontal: widget.paddingHorizontal
          ),
      child: widget.card,
    );
  }
}