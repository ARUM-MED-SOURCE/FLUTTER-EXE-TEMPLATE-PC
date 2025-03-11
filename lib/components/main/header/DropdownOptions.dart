// 드롭다운 타입을 위한 enum
enum DropdownType {
  department,
  project,
  confirm,
}

// 드롭다운 옵션을 위한 상수 클래스
class DropdownOptions {
  static const Map<DropdownType, List<String>> items = {
    DropdownType.department: ['병동', '외래', '응급실'],
    DropdownType.project: ['신경과', '내과', '외과', '소아과'],
    DropdownType.confirm: ['담당의사', '전공의', '전문의'],
  };


  static List<String> getItemsForType(DropdownType type) {
    return items[type]!;
  }
}

