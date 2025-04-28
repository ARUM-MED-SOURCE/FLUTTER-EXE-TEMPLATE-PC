import 'package:flutter/material.dart';
import 'package:flutter_exe/components/common/CustomTextFormField.dart';
import 'package:flutter_exe/components/common/DatePickerField.dart';
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
  OverlayEntry? _overlayEntry;
  SidebarDropdownType? _activeDropdown;
  final Map<SidebarDropdownType, LayerLink> _layerLinks = {
    SidebarDropdownType.department: LayerLink(),
    SidebarDropdownType.ward: LayerLink(),
    SidebarDropdownType.doctor: LayerLink(),
  };
  
  final Map<SidebarDropdownType, GlobalKey> _dropdownKeys = {
    SidebarDropdownType.department: GlobalKey(),
    SidebarDropdownType.ward: GlobalKey(),
    SidebarDropdownType.doctor: GlobalKey(),
  };

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
  void dispose() {
    if (mounted) {
      _overlayEntry?.remove();
      _overlayEntry = null;
    }
    super.dispose();
  }

  void _removeOverlay() {
    if (!mounted) return;
    _overlayEntry?.remove();
    _overlayEntry = null;
    setState(() {
      _activeDropdown = null;
    });
  }

  void _showOverlay(SidebarDropdownType type) {
    _removeOverlay();
    setState(() {
      _activeDropdown = type;
    });
    
    final RenderBox renderBox = _dropdownKeys[type]!.currentContext!.findRenderObject() as RenderBox;
    final size = renderBox.size;
    
    _overlayEntry = _createOverlayEntry(type, size.width);
    Overlay.of(context).insert(_overlayEntry!);
  }

  OverlayEntry _createOverlayEntry(SidebarDropdownType type, double width) {
    final items = _options[type]!;
    final selectedValue = _selectedValues[type]!;
    final layerLink = _layerLinks[type]!;

    return OverlayEntry(
      builder: (context) => Stack(
        children: [
          Positioned.fill(
            child: GestureDetector(
              onTap: _removeOverlay,
              child: Container(
                color: Colors.transparent,
              ),
            ),
          ),
          Positioned(
            width: width,
            child: CompositedTransformFollower(
              link: layerLink,
              showWhenUnlinked: false,
              offset: const Offset(0, 40),
              child: Material(
                elevation: 4,
                borderRadius: BorderRadius.circular(4),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: items.map((item) => _buildDropdownItem(item, selectedValue, type)).toList(),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDropdownItem(String item, String selectedValue, SidebarDropdownType type) {
    final isSelected = item == selectedValue;
    return InkWell(
      onTap: () {
        setState(() {
          _selectedValues[type] = item;
          _activeDropdown = null;
        });
        _removeOverlay();
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.blue50 : Colors.transparent,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text(
          item,
          style: TextStyle(
            fontSize: 14,
            color: isSelected ? AppColors.blue300 : AppColors.gray300,
          ),
        ),
      ),
    );
  }

  Widget _buildDropdownButton(SidebarDropdownType type) {
    final isActive = _activeDropdown == type;
    final value = _selectedValues[type]!;

    return CompositedTransformTarget(
      link: _layerLinks[type]!,
      child: Container(
        key: _dropdownKeys[type],
        child: InkWell(
          onTap: () => _showOverlay(type),
          child: Container(
            height: 38,
            decoration: BoxDecoration(
              border: Border.all(
                color: isActive ? AppColors.blue300 : AppColors.gray100,
              ),
              borderRadius: BorderRadius.circular(4),
              color: isActive ? AppColors.blue50 : AppColors.white,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    value,
                    style: TextStyle(
                      fontSize: 14,
                      color: isActive ? AppColors.blue300 : AppColors.gray300,
                    ),
                  ),
                ),
                Icon(
                  Icons.arrow_drop_down,
                  size: 20,
                  color: isActive ? AppColors.blue300 : AppColors.gray300,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

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
                  const Text('환자번호',
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.gray500,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 8),
                  CustomTextFormField(
                    hintText: '환자번호를 입력해주세요',
                    initialValue: '',
                    onChanged: (value) {},
                    contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    isDense: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: AppColors.blue50,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: AppColors.gray100),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: AppColors.blue300),
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
                      Expanded(child: _buildDropdownButton(SidebarDropdownType.department)),
                      const SizedBox(width: 8),
                      Expanded(child: _buildDropdownButton(SidebarDropdownType.ward)),
                    ],
                  ),
                  const SizedBox(height: 8),
                  _buildDropdownButton(SidebarDropdownType.doctor),
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
                  const Text('방문유형',
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.gray500,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 16,
                    runSpacing: 8,
                    children: [
                      _buildRadioButton('전체', '전체', true),
                      _buildRadioButton('입원', '전체', false),
                      _buildRadioButton('외래', '전체', false),
                      _buildRadioButton('응급', '전체', false),
                    ],
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

  Widget _buildRadioButton(String label, String groupValue, bool isSelected) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Radio(
          value: label,
          groupValue: isSelected ? label : groupValue,
          onChanged: (value) {},
          activeColor: AppColors.blue400,
        ),
        Text(label, style: const TextStyle(color: AppColors.gray500)),
      ],
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
