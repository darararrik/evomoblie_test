import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

List<String> getWeekdayLabels(BuildContext context) {
  final locale = Localizations.localeOf(context).languageCode;

  return [7, 1, 2, 3, 4, 5, 6].map((day) {
    final date = DateTime(2024, 1, day);
    return DateFormat.E(locale).format(date).toUpperCase();
  }).toList();
}
