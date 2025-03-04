import 'package:flutter/material.dart';
import 'package:flutter_exe/constants/colors.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    final isSelected = false;
    return Container(
      width: 200,
      height: 1000,
      color: AppColors.blue500,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 44),
          Image.asset(
            'assets/images/company-logo-color-white.png',
            width: 184,
            height: 44,
          ),
          ...['입원', '외래', '응급', '수술', '검사실', '검색', '빠른조회'].map((e) => Column(
            children: [
              const SizedBox(height: 12),
              ElevatedButton(
                onPressed: () {},
                child: Text(e, style: TextStyle(color: isSelected ? AppColors.white : AppColors.gray100),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: isSelected ? AppColors.blue400 : AppColors.blue500,
                  foregroundColor: Colors.white,
                  elevation: isSelected ? 10 : 0,
                  fixedSize: const Size(180, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide.none,
                  ),
                ),
              ),
            ],
          )).toList(),
          const SizedBox(height: 80),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.add_circle,
                  color: AppColors.blue400,
                  size: 36,
                ),
              ),
              const SizedBox(width: 12),
              Icon(
                Icons.logout_rounded,
                color: AppColors.white,
                size: 36,
              ),
            ],
          )
        ],
      ),
    );
  }
}