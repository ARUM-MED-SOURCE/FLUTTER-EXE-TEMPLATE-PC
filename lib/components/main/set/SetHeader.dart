import 'package:flutter/material.dart';
import 'package:flutter_exe/constants/colors.dart';

// Constants
const _kDropdownItemPadding = EdgeInsets.symmetric(horizontal: 12, vertical: 8);
const _kThickness = 4.0;
const _kIconSize = 18.0;

class SetHeader extends StatefulWidget {
  final VoidCallback onRegister;
  final VoidCallback onDeleteGroup;

  const SetHeader({
    required this.onRegister,
    required this.onDeleteGroup,
    super.key,
  });

  @override
  State<SetHeader> createState() => _SetHeaderState();
}

class _SetHeaderState extends State<SetHeader> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      controller: _scrollController,
      thickness: _kThickness,
      thumbVisibility: true,
      child: Container(
        padding: _kDropdownItemPadding,
        decoration: BoxDecoration(
          color: AppColors.white,
          border: Border(bottom: BorderSide(color: AppColors.blue100)),
        ),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              child: ConstrainedBox(
                constraints: BoxConstraints(minWidth: constraints.maxWidth),
                child: IntrinsicWidth(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text('과별  '),
                      DropdownButton<String>(
                        value: '병동',
                        items: const [
                          DropdownMenuItem(value: '병동', child: Text('병동')),
                          DropdownMenuItem(value: '외래', child: Text('외래')),
                        ],
                        onChanged: (value) {},
                      ),
                      const SizedBox(width: 16),
                      _buildToolbarButton(
                        icon: Icons.clear,
                        label: '서식해제',
                        onPressed: () {},
                      ),
                      _buildToolbarButton(
                        icon: Icons.create_new_folder,
                        label: '서식그룹 등록',
                        onPressed: () => _showFolderNameDialog(context),
                      ),
                      _buildToolbarButton(
                        icon: Icons.delete,
                        label: '서식그룹 삭제',
                        onPressed: widget.onDeleteGroup,
                      ),
                      _buildToolbarButton(
                        icon: Icons.edit,
                        label: '서식그룹 변경',
                        onPressed: () {},
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          _buildSearchField(),
                          const SizedBox(width: 8),
                          ElevatedButton(
                            onPressed: widget.onRegister,
                            style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.blue400),
                            child: const Text(
                              '서식등록',
                              style: TextStyle(color: AppColors.white),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void _showFolderNameDialog(BuildContext context) {
    String folderName = '';

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('서식그룹 등록'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('생성할 폴더 이름을 입력해주세요.'),
              const SizedBox(height: 16),
              TextField(
                autofocus: true,
                decoration: const InputDecoration(
                  hintText: '폴더 이름',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  folderName = value;
                },
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();  // TODO 추가 예정
              },
              child: const Text('취소'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(); // TODO 추가 예정
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.blue400,
              ),
              child: const Text(
                '등록',
                style: TextStyle(color: AppColors.white),
              ),
            ),
          ],
        );
      },
    );
  }

  TextButton _buildToolbarButton({
    required IconData icon,
    required String label,
    required VoidCallback onPressed,
  }) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: Icon(icon, size: _kIconSize, color: AppColors.red500),
      label: Text(label, style: TextStyle(color: AppColors.red500)),
    );
  }

  Widget _buildSearchField() {
    return SizedBox(
      width: 180,
      child: TextField(
        decoration: InputDecoration(
          hintText: '검색어를 입력해주세요.',
          prefixIcon: const Icon(Icons.search, size: _kIconSize),
          isDense: true,
          filled: true,
          fillColor: AppColors.blue50,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}