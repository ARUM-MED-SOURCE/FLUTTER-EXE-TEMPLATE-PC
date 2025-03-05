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
  @override
  Widget build(BuildContext context) {  
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: AppColors.gray100.withOpacity(0.5)),

          ),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey.shade200),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '동의서 검색',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Expanded(
                          child: Text('동의서 검색', 
                            style: TextStyle(fontSize: 14, color: AppColors.gray500)
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12, 
                              vertical: 8
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(color: AppColors.gray100),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Icon(
                                  Icons.calendar_today,
                                  size: 16,
                                  color: AppColors.gray200,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: ListView.builder(
                    itemCount: _consentData.length,
                    itemBuilder: (context, index) {
                      final consent = _consentData[index];
                      return ConsentSearchItem(
                        name: consent['name'] ?? '',
                        id: consent['id'] ?? '',
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
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
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey.shade200),
        ),
      ),
      child: Row(
        children: [
          Text('$id.', style: const TextStyle(fontSize: 14)),
          Checkbox(
            value: false,
            onChanged: (value) {},
            side: BorderSide(color: AppColors.gray150),
          ),
          Expanded(
            child: Text(
              name,
              style: const TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}


 