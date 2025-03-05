import 'package:flutter/material.dart';
import 'package:flutter_exe/constants/colors.dart';
import 'package:intl/intl.dart';
const _patientData = [
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

class PrescriptionConsent extends StatefulWidget {
  const PrescriptionConsent({super.key});

  @override
  State<PrescriptionConsent> createState() => _PrescriptionConsentState();
}

class _PrescriptionConsentState extends State<PrescriptionConsent> {
  DateTime? selectedDate = DateTime.now();
  final DateFormat dateFormat = DateFormat('yyyy-MM-dd', 'ko_KR');
  @override
  Widget build(BuildContext context) {  
    return Container(
      color: AppColors.blue50,
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
                      '처방동의서',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Text('처방일', 
                          style: TextStyle(fontSize: 14, color: AppColors.gray500)
                        ),
                        const SizedBox(width: 8),
                        Container(
                          width: 150,
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
                              Text(
                                dateFormat.format(selectedDate ?? DateTime.now()),
                                style: const TextStyle(fontSize: 14),
                              ),
                              const Icon(
                                Icons.calendar_today,
                                size: 16,
                                color: AppColors.gray200,
                              ),
                            ],
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
                    itemCount: _patientData.length,
                    itemBuilder: (context, index) {
                      final patient = _patientData[index];
                      return PrescriptionConsentItem(
                        name: patient['name'] ?? '',
                        id: patient['id'] ?? '',
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

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2030, 12, 31),
      locale: const Locale('ko', 'KR'),
    );
  }
}

class PrescriptionConsentItem extends StatelessWidget {
  final String name;
  final String id;

  const PrescriptionConsentItem({super.key, required this.name, required this.id});

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
            // activeColor: AppColors.gray500,
            // fillColor: MaterialStateProperty.all(AppColors.gray500),
            // hoverColor: AppColors.gray500,
            // focusColor: AppColors.gray500,
            // checkColor: AppColors.white,
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


 