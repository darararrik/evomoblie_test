import 'package:evomoblie_test/presentation/theme/app_typography.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:evomoblie_test/presentation/constants/spacing.dart';
import 'package:evomoblie_test/presentation/theme/app_colors.dart';
import 'package:evomoblie_test/presentation/utils/padding.dart';
import 'package:evomoblie_test/presentation/widgets/custom_thumb_shape.dart';
import 'package:evomoblie_test/presentation/widgets/custom_tick_mark_shape.dart';

part 'colors.dart';
part 'typography.dart';

class AppTheme {
  static ThemeData get theme => ThemeData(
    extensions: [_colors, _typography],
    textTheme: GoogleFonts.nunitoTextTheme(),
    scaffoldBackgroundColor: _colors.white,
    appBarTheme: AppBarTheme(
      backgroundColor: _colors.white,
      elevation: 0,
      surfaceTintColor: Colors.transparent,
    ),
    tabBarTheme: TabBarThemeData(
      overlayColor: WidgetStatePropertyAll(Colors.transparent),
      indicatorSize: TabBarIndicatorSize.tab,
      tabAlignment: TabAlignment.center,
      splashFactory: NoSplash.splashFactory,
      dividerHeight: 0,
      dividerColor: Colors.transparent,
      labelColor: _colors.white,
      unselectedLabelColor: _colors.grey200,
      labelStyle: GoogleFonts.nunito().copyWith(fontSize: 12),
      unselectedLabelStyle: GoogleFonts.nunito().copyWith(fontSize: 12),
      indicator: BoxDecoration(
        color: _colors.orange,
        borderRadius: BorderRadius.circular(S.p48),
      ),
      labelPadding: P(horizontal: S.p16),
    ),
    sliderTheme: SliderThemeData(
      trackHeight: S.p6,
      activeTrackColor: _colors.orange,
      inactiveTrackColor: Color(0xFFE1DDD8), //Серый 5
      overlayColor: Colors.transparent,
      padding: P(top: S.p16, bottom: S.p6),
      thumbColor: _colors.orange,
      thumbShape: const CustomThumbShape(elevation: 0, thumbRadius: S.p6),
      tickMarkShape: const CustomTickMarkShape(
        tickHeight: S.p8,
        tickWidth: S.p2,
      ),
      inactiveTickMarkColor: const Color(0xFFE1DDD8), //Серый 5
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        elevation: WidgetStatePropertyAll(0),
        foregroundColor: WidgetStateProperty.fromMap({
          WidgetState.disabled: _colors.grey200,
          WidgetState.any: _colors.white,
        }),
        backgroundColor: WidgetStateProperty.fromMap({
          WidgetState.disabled: _colors.grey400,
          WidgetState.any: _colors.orange,
        }),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(S.p69)),
        ),
      ),
    ),
  );
}
