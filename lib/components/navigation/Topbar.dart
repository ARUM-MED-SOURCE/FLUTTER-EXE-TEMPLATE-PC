import 'package:flutter/material.dart';
import 'package:flutter_exe/constants/colors.dart';
import 'package:flutter_exe/components/navigation/enum/HospitalSection.dart';
class TopBar extends StatefulWidget {
  const TopBar({super.key});

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  String selectedButton = HospitalSection.inpatient.label;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: AppColors.blue500,
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
                    children: _buildNavigationButtons(),
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
        'assets/images/company-logo-color-white.png', 
        fit: BoxFit.contain,
      ),
    );
  }

  List<Widget> _buildNavigationButtons() {
    return HospitalSection.values.map((section) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: SizedBox(
        height: 40,
        child: ElevatedButton(
          onPressed: () => setState(() => selectedButton = section.label),
          child: Text(
            section.label,
            style: TextStyle(
              color: selectedButton == section.label ? AppColors.white : AppColors.gray200,
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: selectedButton == section.label ? AppColors.blue400 : AppColors.blue500,
            foregroundColor: Colors.white,
            elevation: selectedButton == section.label ? 10 : 0,
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
