import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:evomoblie_test/presentation/constants/constants.dart';
import 'package:evomoblie_test/presentation/extensions/context_x.dart';
import 'package:evomoblie_test/presentation/extensions/date_time_x.dart';
import 'package:evomoblie_test/presentation/routing/app_router.gr.dart';
import 'package:evomoblie_test/presentation/utils/utils.dart';
import 'package:evomoblie_test/state/mood_cubit.dart';

@RoutePage()
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      routes: [MoodDiaryTabRoute(), StatiscticTabRoute()],
      builder: (context, child, tabController) {
        return NestedScrollView(
          headerSliverBuilder: (context, innerBoxScrolled) {
            return [
              SliverAppBar(
                actionsPadding: P(right: S.p20),
                title: Text(
                  context
                      .read<MoodDiaryCubit>()
                      .state
                      .selectedDate
                      .toFormString(),
                  style: context.typography.titleMedium,
                ),
                actions: [
                  GestureDetector(
                    child: Icon(
                      Icons.calendar_month_rounded,
                      color: context.colors.grey200,
                    ),
                    onTap: () => context.pushRoute(CalendarRoute()),
                  ),
                ],
                bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(S.p30),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: context.colors.grey400,
                      borderRadius: BorderRadius.circular(S.p48),
                    ),
                    child: TabBar(
                      controller: tabController,
                      tabs: const [
                        Tab(
                          height: S.p30,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AppIcon(AppIcons.diary, size: S.p12),
                              SizedBox(width: S.p6),
                              Text('Дневник настроения'),
                            ],
                          ),
                        ),
                        Tab(
                          height: S.p30,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AppIcon(AppIcons.statistics, size: S.p12),
                              SizedBox(width: S.p6),
                              Text('Статистика'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ];
          },
          body: child,
        );
      },
    );
  }
}
