import 'package:flutter/material.dart';
import 'package:flutter_exe/constants/index.dart';
import 'package:flutter_exe/components/navigation/enum/HospitalSection.dart';
import 'package:flutter_exe/providers/hospital_section_provider.dart';
import 'package:flutter_exe/components/main/header/DropdownOptions.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TopBar extends ConsumerWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedSection = ref.watch(hospitalSectionProvider);

    return Container(
      height: 80,
      color: AppColors.blue400,
      child: Row(
        children: [
          // Logo section - Left aligned
          const SizedBox(width: 24),
          _buildLogo(),
          
          // Navigation buttons - Center aligned
          Expanded(
            child: Center(
              child: SizedBox(
                width: 600, // Fixed width for center content
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _buildNavigationButtons(context, ref),
                  ),
                ),
              ),
            ),
          ),
          
          // Icons section - Right aligned
          Row(
            mainAxisSize: MainAxisSize.min,
            children: _buildIconButtons(),
          ),
          const SizedBox(width: 24),
        ],
      ),
    );
  }

  Widget _buildLogo() {
    return SizedBox(
      height: 30,
      child: Image.asset(
        AppImages.companyLogoColorWhite, 
        fit: BoxFit.contain,
      ),
    );
  }

  List<Widget> _buildNavigationButtons(BuildContext context, WidgetRef ref) {
    final selectedSection = ref.watch(hospitalSectionProvider);
    
    return HospitalSection.values.map((section) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: SizedBox(
        height: 40,
        child: ElevatedButton(
          onPressed: () {
            ref.read(hospitalSectionProvider.notifier).state = section;
            DropdownOptions.resetToDefaults();
          },
          child: Text(
            section.label,
            style: TextStyle(
              color: selectedSection == section ? AppColors.white : AppColors.gray200,
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: selectedSection == section ? AppColors.blue500 : AppColors.blue400,
            foregroundColor: Colors.white,
            elevation: selectedSection == section ? 10 : 0,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide.none,
            ),
          ),
        ),
      ),
    )).toList();
  }

  List<Widget> _buildIconButtons() {
    return [
      IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.add_circle,
          color: AppColors.white,
          size: 24,
        ),
      ),
      IconButton( 
        onPressed: () {},
        icon: Icon(
          Icons.logout_rounded,
          color: AppColors.white,
          size: 24,
        ),
      ),
    ];
  }
}   
