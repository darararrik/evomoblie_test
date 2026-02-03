import 'package:auto_route/auto_route.dart';
import 'package:evomoblie_test/presentation/constants/icons.dart';
import 'package:evomoblie_test/presentation/constants/spacing.dart';
import 'package:evomoblie_test/presentation/extensions/context_x.dart';
import 'package:evomoblie_test/presentation/routing/app_router.gr.dart';
import 'package:evomoblie_test/presentation/utils/app_icon.dart';
import 'package:evomoblie_test/presentation/utils/padding.dart';
import 'package:flutter/material.dart';

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
                floating: true,
                pinned: true,
                actionsPadding: P(right: S.p20),
                title: Text(
                  '1 января 09:00',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: context.colors.gray200,
                  ),
                ),
                actions: [
                  GestureDetector(
                    child: Icon(
                      Icons.calendar_month_rounded,
                      color: context.colors.gray200,
                    ),
                    onTap: () {},
                  ),
                ],
                bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(S.p30),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: context.colors.gray400,
                      borderRadius: BorderRadius.circular(S.p48),
                    ),
                    child: TabBar(
                      controller: tabController,
                      tabs: const [
                        Tab(
                          height: S.p30,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: .min,
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
                            mainAxisSize: .min,
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
