import 'package:flutter/material.dart';
import 'package:flutter_exe/components/common/CustomTextFormField.dart';
import 'package:flutter_exe/components/common/DatePickerField.dart';
import 'package:flutter_exe/components/common/Dropdown.dart';
import 'package:flutter_exe/constants/colors.dart';
import 'package:flutter_exe/providers/consent/written_consent_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';

final logger = Logger();

enum SidebarDropdownType { department, ward, doctor }

class Sidebar extends ConsumerStatefulWidget {
  const Sidebar({super.key});

  @override
  ConsumerState<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends ConsumerState<Sidebar> {
  final Map<SidebarDropdownType, String> _selectedValues = {
    SidebarDropdownType.department: '신경과',
    SidebarDropdownType.ward: '병동',
    SidebarDropdownType.doctor: '주치의',
  };

  final Map<SidebarDropdownType, List<String>> _options = {
    SidebarDropdownType.department: ['신경과', '소화기과'],
    SidebarDropdownType.ward: ['병동'],
    SidebarDropdownType.doctor: ['주치의'],
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border.all(color: AppColors.blue100),
        borderRadius: BorderRadius.circular(16),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (value) {},
                    side: const BorderSide(color: AppColors.gray200),
                  ),
                  const Text('내가 작성한 동의서만 조회',
                    style: TextStyle(color: AppColors.gray500),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('사번',
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.gray500,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 8),
                  CustomTextFormField(
                    hintText: '사번을 입력해주세요',
                    initialValue: '',
                    onChanged: (value) {},
                    contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    isDense: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: AppColors.blue50,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: AppColors.gray100),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: AppColors.blue300),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('진료과/병동/주치의 선택',
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.gray500,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(
                        child: Dropdown<String>(
                          value: _selectedValues[SidebarDropdownType.department]!,
                          items: _options[SidebarDropdownType.department]!,
                          onChanged: (value) {
                            setState(() {
                              _selectedValues[SidebarDropdownType.department] = value;
                            });
                          },
                          itemBuilder: (value) => value,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Dropdown<String>(
                          value: _selectedValues[SidebarDropdownType.ward]!,
                          items: _options[SidebarDropdownType.ward]!,
                          onChanged: (value) {
                            setState(() {
                              _selectedValues[SidebarDropdownType.ward] = value;
                            });
                          },
                          itemBuilder: (value) => value,
                          width: 200,
                          minWidth: 200,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(
                        child: Dropdown<String>(
                          value: _selectedValues[SidebarDropdownType.doctor]!,
                          items: _options[SidebarDropdownType.doctor]!,
                    onChanged: (value) {
                      setState(() {
                        _selectedValues[SidebarDropdownType.doctor] = value;
                      });
                    },
                          itemBuilder: (value) => value,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('출력일',
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.gray500,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 8),
                  DateRangePickerField(
                    startDate: DateTime.now(),
                    endDate: DateTime.now().add(Duration(days: 3)),
                    dateFormat: DateFormat('yyyy-MM-dd'),
                    onStartDateSelected: (value) {},
                    onEndDateSelected: (value) {},
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('동의서유형',
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.gray500,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 4),
                  LayoutBuilder(
                    builder: (context, constraints) {
                      if (constraints.maxWidth < 300) {
                        // 화면이 좁을 때는 2x2 그리드 형태로 배치
                        return Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                _buildCheckbox('임시저장', true),
                                const SizedBox(width: 16),
                                _buildCheckbox('인증저장', false),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                _buildCheckbox('구두동의', false),
                                const SizedBox(width: 16),
                                _buildCheckbox('응급동의', false),
                              ],
                            ),
                          ],
                        );
                      } else {
                        // 화면이 넓을 때는 한 줄에 배치
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _buildCheckbox('임시저장', true),
                            _buildCheckbox('인증저장', false),
                            _buildCheckbox('구두동의', false),
                            _buildCheckbox('응급동의', false),
                          ],
                        );
                      }
                    },
                  ),
                ],
              ),
              const SizedBox(height: 24),
              LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth < 300) {
                    // 화면이 좁을 때는 세로로 배치
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Text('총 조회건수: 29건',
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.gray500,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Expanded(
                              child: OutlinedButton.icon(
                                onPressed: () {},
                                icon: const Icon(Icons.refresh, size: 18, color: AppColors.blue400),
                                label: const Text('초기화',
                                  style: TextStyle(
                                    color: AppColors.blue400,
                                    fontSize: 14,
                                  ),
                                ),
                                style: OutlinedButton.styleFrom(
                                  side: const BorderSide(color: AppColors.blue100),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                                  backgroundColor: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: OutlinedButton.icon(
                                onPressed: () {
                                  logger.i('ee');
                                  // ref.read(writtenConsentProvider.notifier).getData();
                                },
                                icon: const Icon(Icons.search, size: 18, color: AppColors.blue400),
                                label: const Text('검색',
                                  style: TextStyle(
                                    color: AppColors.blue400,
                                    fontSize: 14,
                                  ),
                                ),
                                style: OutlinedButton.styleFrom(
                                  side: const BorderSide(color: AppColors.blue100),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                                  backgroundColor: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  } else {
                    // 화면이 넓을 때는 가로로 배치
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('총 조회건수: 29건',
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.gray500,
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 90,  // 버튼 너비 축소
                              child: OutlinedButton.icon(
                                onPressed: () {},
                                icon: const Icon(Icons.refresh, size: 18, color: AppColors.blue400),
                                label: const Text('초기화',
                                  style: TextStyle(
                                    color: AppColors.blue400,
                                    fontSize: 14,
                                  ),
                                ),
                                style: OutlinedButton.styleFrom(
                                  side: const BorderSide(color: AppColors.blue100),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                                  backgroundColor: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            SizedBox(
                              width: 90,  // 버튼 너비 축소
                              child: OutlinedButton.icon(
                                onPressed: () {
                                  ref.read(writtenConsentProvider.notifier).getData();
                                },
                                icon: const Icon(Icons.search, size: 18, color: AppColors.blue400),
                                label: const Text('검색',
                                  style: TextStyle(
                                    color: AppColors.blue400,
                                    fontSize: 14,
                                  ),
                                ),
                                style: OutlinedButton.styleFrom(
                                  side: const BorderSide(color: AppColors.blue100),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                                  backgroundColor: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCheckbox(String label, bool isChecked) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 20,
          height: 20,
          child: Checkbox(
            value: isChecked,
            onChanged: (value) {},
            activeColor: AppColors.blue400,
            side: const BorderSide(color: AppColors.gray200),
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
        ),
        const SizedBox(width: 4),
        Text(label, 
          style: const TextStyle(
            fontSize: 14,
            color: AppColors.gray500
          ),
        ),
      ],
    );
  }
}
