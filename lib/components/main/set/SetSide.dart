import 'package:flutter/material.dart';
import 'package:flutter_exe/constants/colors.dart';

class SetSide extends StatefulWidget {
  const SetSide({Key? key}) : super(key: key);

  @override
  State<SetSide> createState() => SetSideState();
}

class SetSideState extends State<SetSide> {
  final List<Map<String, dynamic>> _groups = [ ];
  int _groupCount = 0;
  int? _selectedGroupIndex;

  void addNewGroup(List<Map<String, dynamic>> forms) {
    setState(() {
      final newGroup = {
        'title': '📁 ${++_groupCount}',
        'isExpanded': true,
        'forms': forms.map((e) => {'title': e['title']}).toList(),
      };
      _groups.add(newGroup);
    });
  }

  void deleteSelectedGroup() {
    if (_selectedGroupIndex == null || _selectedGroupIndex! >= _groups.length) return;
    setState(() {
      _groups.removeAt(_selectedGroupIndex!);
      _selectedGroupIndex = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      color: AppColors.blue100,
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: _groups.isEmpty
            ? const Center(
          child: Text(
            '그룹이 없습니다.',
            style: TextStyle(color: Colors.grey),
          ),
        )
        : ListView.builder(
          itemCount: _groups.length,
          itemBuilder: (context, groupIndex) {
            final group = _groups[groupIndex];
            final isSelected = groupIndex == _selectedGroupIndex;
            final isExpanded = group['isExpanded'] as bool;

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      group['isExpanded'] = !isExpanded;
                      _selectedGroupIndex = groupIndex;
                    });
                  },
                  child: Container(
                    color: isSelected ? AppColors.blue50 : Colors.transparent,
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                    child: Row(
                      children: [
                        Icon(
                          isExpanded ? Icons.expand_more : Icons.chevron_right,
                          size: 20,
                          color: AppColors.blue400,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          group['title'] as String,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: isSelected ? AppColors.blue400 : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                if (isExpanded)
                  ...group['forms'].map<Widget>((form) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: AppColors.blue50,
                        border: Border.all(color: AppColors.blue100),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: ListTile(
                        dense: true,
                        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                        title: Text(
                          form['title'] as String,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    );
                  }).toList(),
              ],
            );
          },
        ),
      ),
    );
  }
}