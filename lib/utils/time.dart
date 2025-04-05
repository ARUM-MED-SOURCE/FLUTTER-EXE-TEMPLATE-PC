import 'package:intl/intl.dart';

String formatToYYYYMMDD(DateTime date) {
  return DateFormat('yyyyMMdd').format(date);
}

String formatToYYYY_MM_DD(DateTime date) {
  return DateFormat('yyyy-MM-dd').format(date);
}





