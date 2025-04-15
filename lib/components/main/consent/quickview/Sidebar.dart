import 'package:flutter/material.dart';
import 'package:flutter_exe/constants/colors.dart';
import 'package:flutter_exe/components/common/CustomTextFormField.dart';
import 'package:flutter_exe/components/common/DatePickerField.dart';
import 'package:intl/intl.dart';
class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Checkbox(
                  value: true,
                  onChanged: (value) {},
                ),
                Text('내가 작성한 동의서만 조회'),
              ],
            ),
            const SizedBox(height: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('사번'),
                CustomTextFormField(
                  hintText: '사번을 입력해주세요',
                  initialValue: '',
                  onChanged: (value) {},
                ),
              ],
            ),
            const SizedBox(height: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('환자번호'),
                CustomTextFormField(
                  hintText: '환자번호를 입력해주세요',
                  initialValue: '',
                  onChanged: (value) {},
                ),
              ],
            ),
            const SizedBox(height: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('진료과/병동/주치의 선택'),
                Row(
                  children: [
                    Expanded(
                      child: DropdownButton<String>(
                        value: '진료과',
                        onChanged: (value) {},
                        items: ['진료과', '신경과', '소화기과'].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                    Expanded(
                      child: DropdownButton<String>(
                        value: '병동',
                        onChanged: (value) {},
                        items: ['병동', '병동2', '병동3'].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: double.infinity,
                  child: DropdownButton<String>(
                    value: '주치의',
                    onChanged: (value) {},
                  items: ['주치의', '김의사', '이의사'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('출력일'),
                DateRangePickerField(
                  startDate: DateTime.now(),
                  endDate: DateTime.now(),
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
                Text('방문유형'),
                Row(
                  children: [
                    Row(
                      children: [
                        Radio(
                          value: '전체',
                          groupValue: '전체',
                          onChanged: (value) {},
                        ),
                        Text('전체'),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: '입원',
                          groupValue: '입원',
                          onChanged: (value) {},
                        ),
                        Text('입원'),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: '외래',
                          groupValue: '외래',
                          onChanged: (value) {},
                        ),
                        Text('외래'),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: '응급',
                          groupValue: '응급',
                          onChanged: (value) {},
                        ),
                        Text('응급'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('동의서유형'),
                Row(
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: true,
                          onChanged: (value) {},
                        ),
                        Text('임시저장'),
                        Checkbox(
                          value: true,
                          onChanged: (value) {},
                        ),
                        Text('인증저장'),
                        Checkbox(
                          value: true,
                          onChanged: (value) {},
                        ),
                        Text('구두동의'),
                        Checkbox(
                          value: true,
                          onChanged: (value) {},
                        ),
                        Text('응급동의'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
