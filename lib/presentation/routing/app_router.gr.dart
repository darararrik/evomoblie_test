// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:evomoblie_test/presentation/screens/main_screen.dart' as _i1;
import 'package:evomoblie_test/presentation/screens/mood_diary_tab.dart' as _i2;
import 'package:evomoblie_test/presentation/screens/statisctic_tab.dart' as _i3;

/// generated route for
/// [_i1.MainScreen]
class MainRoute extends _i4.PageRouteInfo<void> {
  const MainRoute({List<_i4.PageRouteInfo>? children})
    : super(MainRoute.name, initialChildren: children);

  static const String name = 'MainRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i1.MainScreen();
    },
  );
}

/// generated route for
/// [_i2.MoodDiaryTab]
class MoodDiaryTabRoute extends _i4.PageRouteInfo<void> {
  const MoodDiaryTabRoute({List<_i4.PageRouteInfo>? children})
    : super(MoodDiaryTabRoute.name, initialChildren: children);

  static const String name = 'MoodDiaryTabRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i2.MoodDiaryTab();
    },
  );
}

/// generated route for
/// [_i3.StatiscticTab]
class StatiscticTabRoute extends _i4.PageRouteInfo<void> {
  const StatiscticTabRoute({List<_i4.PageRouteInfo>? children})
    : super(StatiscticTabRoute.name, initialChildren: children);

  static const String name = 'StatiscticTabRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i3.StatiscticTab();
    },
  );
}
