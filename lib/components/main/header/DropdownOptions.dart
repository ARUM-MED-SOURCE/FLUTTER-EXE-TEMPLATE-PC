import 'package:flutter/material.dart';
import 'package:flutter_exe/components/navigation/enum/HospitalSection.dart';

// 드롭다운 타입을 위한 enum
enum DropdownType {
  department,
  project,
  confirm,
  consentType,
  consentType2,
}

// 드롭다운 옵션을 위한 상수 클래스
class DropdownOptions {
  // 각 섹션별로 보여줄 드롭다운 타입 정의
  static final Map<HospitalSection, List<DropdownType>> sectionDropdowns = {
    HospitalSection.inpatient: [DropdownType.department, DropdownType.project, DropdownType.confirm],
    HospitalSection.outpatient: [DropdownType.department, DropdownType.project, DropdownType.confirm, DropdownType.consentType, DropdownType.consentType2],
    HospitalSection.emergency: [DropdownType.department, DropdownType.project, DropdownType.confirm],
    HospitalSection.surgery: [DropdownType.department, DropdownType.project, DropdownType.confirm],
    HospitalSection.laboratory: [DropdownType.department, DropdownType.project, DropdownType.confirm],
    HospitalSection.search: [DropdownType.department, DropdownType.project, DropdownType.confirm],
    HospitalSection.quickView: [DropdownType.department, DropdownType.project, DropdownType.confirm],
  };

  // 각 드롭다운 타입별 옵션 정의
  static const Map<DropdownType, List<String>> options = {
    DropdownType.department: ['병동', '외래', '응급실'],
    DropdownType.project: ['신경과', '내과', '외과', '소아과'],
    DropdownType.confirm: ['담당의사', '전공의', '전문의'],
    DropdownType.consentType: ['전체', '세트동의서', '개인동의서'],
    DropdownType.consentType2: ['임시저장', '인증저장', '구두동의', '응급동의'],
  };

  // 섹션에 따라 보여줄 드롭다운 타입 목록 반환
  static List<DropdownType> getVisibleTypes(HospitalSection section) {
    return sectionDropdowns[section] ?? [];
  }

  // 특정 드롭다운 타입의 옵션 목록 반환
  static List<String> getOptions(DropdownType type) {
    return options[type] ?? [];
  }
  
  // 드롭다운 오버레이 위치 계산을 위한 레이어 링크
  static final Map<DropdownType, LayerLink> layerLinks = Map.fromEntries(
    DropdownType.values.map((type) => MapEntry(type, LayerLink()))
  );
}

