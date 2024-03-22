import 'package:intl/intl.dart';

class DateEntity {
  static DateFormat dateFormat = DateFormat('dd.MM.y');

  static String todayDate = dateFormat.format(DateTime.now());

  static String yesterdayDate = dateFormat.format(
    DateTime.now().subtract(
      const Duration(days: 1),
    ),
  );

  static String formatDate(String date) {
    if (date == todayDate) {
      return 'сегодня';
    } else if (date == yesterdayDate) {
      return 'вчера';
    } else {
      return date;
    }
  }
}
