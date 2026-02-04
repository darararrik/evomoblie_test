import 'package:flutter/material.dart';

import 'package:evomoblie_test/presentation/constants/spacing.dart';
import 'package:evomoblie_test/presentation/extensions/context_x.dart';
import 'package:evomoblie_test/presentation/utils/padding.dart';

class MonthCard extends StatelessWidget {
  final DateTime monthDate;

  const MonthCard({super.key, required this.monthDate});

  @override
  Widget build(BuildContext context) {
    final daysInMonth = DateUtils.getDaysInMonth(
      monthDate.year,
      monthDate.month,
    );
    final firstWeekday = DateTime(monthDate.year, monthDate.month, 1).weekday;
    final offset = firstWeekday - 1;

    return GridView.builder(
      padding: P(top: S.p8),
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 7,
        mainAxisSpacing: 2,
        crossAxisSpacing: 2,
      ),
      itemCount: daysInMonth + offset,
      itemBuilder: (context, index) {
        if (index < offset) return const SizedBox.shrink();

        final day = index - offset + 1;
        final isToday = _isToday(monthDate.year, monthDate.month, day);

        return Center(
          child: Container(
            decoration: isToday
                ? BoxDecoration(
                    color: context.colors.highlightColor,
                    shape: BoxShape.circle,
                  )
                : null,
            padding: const EdgeInsets.all(S.p4),
            child: Text('$day', style: context.typography.labelSmall),
          ),
        );
      },
    );
  }

  bool _isToday(int year, int month, int day) {
    final now = DateTime.now();
    return now.year == year && now.month == month && now.day == day;
  }
}
