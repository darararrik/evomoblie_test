import 'package:intl/intl.dart';

extension DateTimeX on DateTime {
  String toFormString() {
    return DateFormat('d MMMM HH:mm', 'ru').format(this);
  }
}
