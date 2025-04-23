import 'package:flutter/material.dart';
import 'package:flutter_exe/constants/colors.dart';

class SetList extends StatefulWidget {
  const SetList({Key? key}) : super(key: key);

  @override
  SetListState createState() => SetListState();
}

class SetListState extends State<SetList> {
  final List<Map<String, dynamic>> _forms = [
    {'title': '가슴동통막 관통치료 유리피판술 동의서', 'checked': false, 'favorite': false},
    {'title': '가정의학과 감기, 독감환자기록', 'checked': false, 'favorite': false},
  ];

  List<Map<String, dynamic>> getSelectedForms() {
    return _forms.where((form) => form['checked'] == true).toList();
  }

  void clearSelectedForms() {
    setState(() {
      for (var form in _forms) {
        form['checked'] = false;
      }
    });
  }

  void _toggleChecked(int index) {
    setState(() {
      _forms[index]['checked'] = !_forms[index]['checked'];
    });
  }

  void _toggleFavorite(int index) {
    setState(() {
      _forms[index]['favorite'] = !_forms[index]['favorite'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: _forms.length,
      separatorBuilder: (_, __) => const SizedBox(height: 8),
      itemBuilder: (context, index) {
        final form = _forms[index];
        final isChecked = form['checked'] as bool;
        final isFavorite = form['favorite'] as bool;

        return Container(
          decoration: BoxDecoration(
            color: AppColors.white,
            border: Border.all(color: AppColors.blue100),
            borderRadius: BorderRadius.circular(8),
          ),
          child: ListTile(
            leading: Checkbox(
              value: isChecked,
              onChanged: (_) => _toggleChecked(index),
            ),
            title: Text(form['title'] as String),
            trailing: IconButton(
              icon: Icon(
                isFavorite ? Icons.star : Icons.star_border,
                color: isFavorite ? Colors.amber : Colors.grey,
              ),
              onPressed: () => _toggleFavorite(index),
            ),
            onTap: () => _toggleChecked(index),
          ),
        );
      },
    );
  }
}
