import 'package:intl/intl.dart';
import 'package:nepali_date_picker/nepali_date_picker.dart';

class DateTimeManipulator {
  static String nepaliDateFormatter({
    required NepaliDateTime date,
  }) {
    return NepaliDateFormat('yyyy-MM-dd').format(date);
  }

  static String dateFormatter({
    required DateTime date,
  }) {
    return DateFormat('yyyy-MM-dd').format(date);
  }

  static String nepaliDateFormatterAsString({
    required NepaliDateTime date,
  }) {
    return NepaliDateFormat.yMMMMd().format(date);
  }

  static String dateFormatterAsString({
    required DateTime date,
  }) {
    return DateFormat.yMMMMd().format(date);
  }
}
