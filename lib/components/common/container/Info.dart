import 'package:flutter/material.dart';
import 'package:flutter_exe/constants/colors.dart';
import 'package:flutter_exe/components/common/container/InfoCard.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
abstract class Info extends ConsumerStatefulWidget {
  final InfoCard card;
  
  const Info({super.key, required this.card});

  @override
  ConsumerState<Info> createState() => _InfoState();
}

class _InfoState extends ConsumerState<Info> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.blue50,
      padding: const EdgeInsets.all(8.0),
      child: widget.card,
    );
  }
}