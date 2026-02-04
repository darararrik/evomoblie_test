import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:intl/intl.dart';

import 'package:evomoblie_test/presentation/constants/spacing.dart';
import 'package:evomoblie_test/presentation/extensions/context_x.dart';
import 'package:evomoblie_test/presentation/extensions/string.dart';
import 'package:evomoblie_test/presentation/routing/app_router.gr.dart';
import 'package:evomoblie_test/presentation/utils/padding.dart';
import 'package:evomoblie_test/presentation/widgets/month_card.dart';

@RoutePage()
class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final int currentYear = DateTime.now().year;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            actionsPadding: P(right: S.p20),
            leading: GestureDetector(
              child: Icon(
                Icons.close_rounded,
                color: context.colors.grey200,
                size: S.p32,
              ),
              onTap: () => context.pop(),
            ),
            actions: [
              Text(
                'Сегодня',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: context.colors.grey200,
                ),
              ),
            ],
          ),

          SliverPadding(
            padding: P(top: S.p12, bottom: S.p26),
            sliver: SliverToBoxAdapter(
              child: Center(
                child: Text(
                  '$currentYear',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w800,
                    color: context.colors.black,
                  ),
                ),
              ),
            ),
          ),

          SliverPadding(
            padding: P(horizontal: S.p20, bottom: S.p32),
            sliver: SliverGrid.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.15,
                mainAxisSpacing: S.p36,
                crossAxisSpacing: S.p36,
              ),
              itemCount: 12,
              itemBuilder: (context, index) {
                final monthDate = DateTime(currentYear, index + 1);
                return GestureDetector(
                  onTap: () => context.pushRoute(
                    MonthDetailRoute(initialDate: monthDate),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: P(left: S.p4),
                        child: Text(
                          DateFormat.MMMM(
                            'ru',
                          ).format(monthDate).capitalizeFirst(),
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Expanded(child: MonthCard(monthDate: monthDate)),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
