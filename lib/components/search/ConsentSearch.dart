import 'package:flutter/material.dart';
import 'package:flutter_exe/constants/colors.dart';
const _consentData = [
  {
    'id' : '1',
    'name' : '제왕절개술 동의서'
  },
  {
    'id' : '2',
    'name' : '척추 신경 차단술 동의서'
  },
  {
    'id' : '3',
    'name' : '척추 신경 차단술 동의서'
  },
  {
    'id' : '4',
    'name' : '척추 신경 차단술 동의서'
  },
  {
    'id' : '5',
    'name' : '척추 신경 차단술 동의서'
  },
  {
    'id' : '6',
    'name' : '척추 신경 차단술 동의서'
  },
  
  
];

class ConsentSearch extends StatefulWidget {
  const ConsentSearch({super.key});

  @override
  State<ConsentSearch> createState() => _ConsentSearchState();
}

class _ConsentSearchState extends State<ConsentSearch> {
  String selectedOption = 'all';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('동의서 검색', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            Row(
              children: [
                Transform.scale(
                  scale: 0.8,
                  child: Radio(
                    value: 'all',
                    groupValue: selectedOption,
                    onChanged: (value) => setState(() => selectedOption = value!),
                    activeColor: AppColors.blue300,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                ),
                const Text('전체', style: TextStyle(fontSize: 12)),
                Transform.scale(
                  scale: 0.8,
                  child: Radio(
                    value: 'set',
                    groupValue: selectedOption,
                    onChanged: (value) => setState(() => selectedOption = value!),
                    activeColor: AppColors.blue300,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                ),
                const Text('세트동의서', style: TextStyle(fontSize: 12)),
                Transform.scale(
                  scale: 0.8,
                  child: Radio(
                    value: 'favorite',
                    groupValue: selectedOption,
                    onChanged: (value) => setState(() => selectedOption = value!),
                    activeColor: AppColors.blue300,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                ),
                const Text('즐겨찾기', style: TextStyle(fontSize: 12)),
              ],
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: '동의서 검색',
                hintStyle: TextStyle(color: AppColors.gray500),
                filled: true,
                fillColor: AppColors.blue150,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                suffixIcon: Icon(Icons.search, color: AppColors.blue300),
              ),
              )
            ),
            const SizedBox(height: 16),
            const Divider(
              height: 1,
              thickness: 1,
              color: AppColors.gray100,
            ),
            Expanded(
              child: ListView.separated(
                itemCount: _consentData.length,
                separatorBuilder: (context, index) => const Divider(height: 1, color: AppColors.gray100),
                itemBuilder: (context, index) {
                  final consent = _consentData[index];
                  return ConsentSearchItem(
                    name: consent['name'] ?? '',
                    id: consent['id'] ?? '',
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ConsentSearchItem extends StatelessWidget {
  final String name;
  final String id;

  const ConsentSearchItem({super.key, required this.name, required this.id});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Row(
        children: [
          SizedBox(
            width: 24,
            child: Text(
              '$id.',
              style: const TextStyle(fontSize: 14, color: AppColors.black),
            ),
          ),
          Checkbox(
            value: false,
            onChanged: (value) {},
            activeColor: AppColors.blue300,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              name,
              style: const TextStyle(fontSize: 14),
            ),
          ),
          IconButton(
            icon: Icon(Icons.star_border, color: Colors.grey[400]),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}


 