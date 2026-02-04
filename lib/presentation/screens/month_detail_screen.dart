import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:evomoblie_test/presentation/constants/spacing.dart';
import 'package:evomoblie_test/presentation/extensions/context_x.dart';
import 'package:evomoblie_test/presentation/routing/app_router.gr.dart';
import 'package:evomoblie_test/presentation/utils/locale.dart';
import 'package:evomoblie_test/presentation/utils/padding.dart';
import 'package:evomoblie_test/state/mood_cubit.dart';

@RoutePage()
class MonthDetailScreen extends StatefulWidget {
  final DateTime initialDate;
  const MonthDetailScreen({super.key, required this.initialDate});

  @override
  State<MonthDetailScreen> createState() => _MonthDetailScreenState();
}

class _MonthDetailScreenState extends State<MonthDetailScreen> {
  List<DateTime?> _singleDatePickerValueWithDefaultValue = [];

  @override
  void initState() {
    super.initState();
    _singleDatePickerValueWithDefaultValue = [widget.initialDate];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actionsPadding: P(right: S.p20),
        leading: GestureDetector(
          child: Icon(
            Icons.close_rounded,
            color: context.colors.grey200,
            size: S.p32,
          ),
          onTap: () => context.pop(),
        ),
        actions: [Text('Сегодня', style: context.typography.titleMedium)],
      ),
      body: CalendarDatePicker2(
        config: CalendarDatePicker2Config(
          hideScrollViewMonthWeekHeader: true,
          hideScrollViewTopHeaderDivider: true,
          firstDate: DateTime(2026),
          lastDate: DateTime(2026, 12, 31),
          calendarType: CalendarDatePicker2Type.single,
          calendarViewMode: CalendarDatePicker2Mode.scroll,
          selectedDayHighlightColor: context.colors.highlightColor,
          weekdayLabels: getWeekdayLabels(context),
          dayTextStyle: context.typography.titleMedium.copyWith(
            fontWeight: FontWeight.w500,
            color: context.colors.black,
          ),
          selectedDayTextStyle: context.typography.titleMedium.copyWith(
            color: context.colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        value: _singleDatePickerValueWithDefaultValue,
        onValueChanged: (date) => {
          context.read<MoodDiaryCubit>().selectDate(date.first),
          context.navigateTo(MainRoute()),
        },
      ),
    );
  }
}
