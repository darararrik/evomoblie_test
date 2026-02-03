import 'package:evomoblie_test/presentation/constants/spacing.dart';
import 'package:evomoblie_test/presentation/theme/colors.dart';
import 'package:evomoblie_test/presentation/utils/padding.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

part 'app_colors.dart';

class AppTheme {
  static ThemeData get theme => ThemeData(
    extensions: [_colors],
    textTheme: GoogleFonts.nunitoTextTheme(),
    scaffoldBackgroundColor: _colors.white,
    appBarTheme: AppBarTheme(backgroundColor: _colors.white, elevation: 0),
    tabBarTheme: TabBarThemeData(
      overlayColor: WidgetStatePropertyAll(Colors.transparent),
      indicatorSize: TabBarIndicatorSize.tab,
      tabAlignment: TabAlignment.center,
      splashFactory: NoSplash.splashFactory,
      dividerHeight: 0,
      dividerColor: Colors.transparent,
      labelColor: _colors.white,
      unselectedLabelColor: _colors.gray200,
      labelStyle: GoogleFonts.nunito().copyWith(fontSize: 12),
      unselectedLabelStyle: GoogleFonts.nunito().copyWith(fontSize: 12),
      indicator: BoxDecoration(
        color: _colors.orange,
        borderRadius: BorderRadius.circular(S.p48),
      ),
      labelPadding: P(horizontal: S.p16),
    ),
  );
}
