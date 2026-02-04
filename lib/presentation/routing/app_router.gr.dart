// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/material.dart' as _i7;

import 'package:auto_route/auto_route.dart' as _i6;

import 'package:evomoblie_test/presentation/screens/main_screen.dart' as _i2;
import 'package:evomoblie_test/presentation/screens/mood_diary_tab.dart' as _i4;
import 'package:evomoblie_test/presentation/screens/statisctic_tab.dart' as _i5;

import 'package:evomoblie_test/presentation/screens/calendar_screen.dart'
    as _i1;
import 'package:evomoblie_test/presentation/screens/month_detail_screen.dart'
    as _i3;

/// generated route for
/// [_i1.CalendarScreen]
class CalendarRoute extends _i6.PageRouteInfo<void> {
  const CalendarRoute({List<_i6.PageRouteInfo>? children})
    : super(CalendarRoute.name, initialChildren: children);

  static const String name = 'CalendarRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i1.CalendarScreen();
    },
  );
}

/// generated route for
/// [_i2.MainScreen]
class MainRoute extends _i6.PageRouteInfo<void> {
  const MainRoute({List<_i6.PageRouteInfo>? children})
    : super(MainRoute.name, initialChildren: children);

  static const String name = 'MainRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i2.MainScreen();
    },
  );
}

/// generated route for
/// [_i3.MonthDetailScreen]
class MonthDetailRoute extends _i6.PageRouteInfo<MonthDetailRouteArgs> {
  MonthDetailRoute({
    _i7.Key? key,
    required DateTime initialDate,
    List<_i6.PageRouteInfo>? children,
  }) : super(
         MonthDetailRoute.name,
         args: MonthDetailRouteArgs(key: key, initialDate: initialDate),
         initialChildren: children,
       );

  static const String name = 'MonthDetailRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MonthDetailRouteArgs>();
      return _i3.MonthDetailScreen(
        key: args.key,
        initialDate: args.initialDate,
      );
    },
  );
}

class MonthDetailRouteArgs {
  const MonthDetailRouteArgs({this.key, required this.initialDate});

  final _i7.Key? key;

  final DateTime initialDate;

  @override
  String toString() {
    return 'MonthDetailRouteArgs{key: $key, initialDate: $initialDate}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! MonthDetailRouteArgs) return false;
    return key == other.key && initialDate == other.initialDate;
  }

  @override
  int get hashCode => key.hashCode ^ initialDate.hashCode;
}

/// generated route for
/// [_i4.MoodDiaryTab]
class MoodDiaryTabRoute extends _i6.PageRouteInfo<void> {
  const MoodDiaryTabRoute({List<_i6.PageRouteInfo>? children})
    : super(MoodDiaryTabRoute.name, initialChildren: children);

  static const String name = 'MoodDiaryTabRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i4.MoodDiaryTab();
    },
  );
}

/// generated route for
/// [_i5.StatiscticTab]
class StatiscticTabRoute extends _i6.PageRouteInfo<void> {
  const StatiscticTabRoute({List<_i6.PageRouteInfo>? children})
    : super(StatiscticTabRoute.name, initialChildren: children);

  static const String name = 'StatiscticTabRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i5.StatiscticTab();
    },
  );
}
