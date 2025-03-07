import 'package:flutter/material.dart';
import 'package:flutter_exe/constants/colors.dart';

class TopBar extends StatefulWidget {
  const TopBar({super.key});

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  String selectedButton = '입원';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: AppColors.blue500,
      child: Row(
        children: [
          // Logo section - Left aligned
          const SizedBox(width: 24),
          SizedBox(
            height: 30,
            child: Image.asset(
              'assets/images/company-logo-color-white.png',
              fit: BoxFit.contain,
            ),
          ),
          
          // Navigation buttons - Center aligned
          Expanded(
            child: Center(
              child: SizedBox(
                width: 600, // Fixed width for center content
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ...['입원', '외래', '응급', '수술', '검사실', '검색', '빠른조회'].map((e) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: SizedBox(
                          height: 40,
                          child: ElevatedButton(
                            onPressed: () => setState(() => selectedButton = e),
                            child: Text(
                              e,
                              style: TextStyle(
                                color: selectedButton == e ? AppColors.white : AppColors.gray200,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: selectedButton == e ? AppColors.blue400 : AppColors.blue500,
                              foregroundColor: Colors.white,
                              elevation: selectedButton == e ? 10 : 0,
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                      )).toList(),
                    ],
                  ),
                ),
              ),
            ),
          ),
          
          // Icons section - Right aligned
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.add_circle,
                  color: AppColors.blue400,
                  size: 24,
                ),
              ),
              const SizedBox(width: 12),
              Icon(
                Icons.logout_rounded,
                color: AppColors.white,
                size: 24,
              ),
            ],
          ),
          const SizedBox(width: 24),
        ],
      ),
    );
  }
}