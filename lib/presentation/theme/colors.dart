import 'package:flutter/material.dart';

class AppColors extends ThemeExtension<AppColors> {
  final Color orange;
  final Color highlightColor;
  final Color black;
  final Color white;
  final Color grey100;
  final Color grey200;
  final Color grey300;
  final Color grey400;
  final Color grey500;
  final LinearGradient orangeGradient;
  final BoxShadow shadow1;
  // final BoxShadow shadow2;
  // final BoxShadow shadow3;
  AppColors({
    required this.orange,
    required this.highlightColor,
    required this.black,
    required this.white,
    required this.grey100,
    required this.grey200,
    required this.grey300,
    required this.grey400,
    required this.grey500,
    required this.orangeGradient,
    required this.shadow1,
    // required this.shadow2,
    // required this.shadow3,
  });
  @override
  AppColors copyWith({
    Color? orange,
    Color? highlightColor,
    Color? black,
    Color? white,
    Color? grey100,
    Color? grey200,
    Color? grey300,
    Color? grey400,
    Color? grey500,
    LinearGradient? orangeGradient,
    BoxShadow? shadow1,
    BoxShadow? shadow2,
    BoxShadow? shadow3,
  }) {
    return AppColors(
      orange: orange ?? this.orange,
      highlightColor: highlightColor ?? this.highlightColor,
      black: black ?? this.black,
      white: white ?? this.white,
      grey100: grey100 ?? this.grey100,
      grey200: grey200 ?? this.grey200,
      grey300: grey300 ?? this.grey300,
      grey400: grey400 ?? this.grey400,
      grey500: grey500 ?? this.grey500,
      orangeGradient: orangeGradient ?? this.orangeGradient,
      shadow1: shadow1 ?? this.shadow1,
      // shadow2: shadow2 ?? this.shadow2,
      // shadow3: shadow3 ?? this.shadow3,
    );
  }

  @override
  AppColors lerp(ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) {
      return this;
    }
    return AppColors(
      orange: Color.lerp(orange, other.orange, t) ?? orange,
      highlightColor:
          Color.lerp(highlightColor, other.highlightColor, t) ?? highlightColor,
      black: Color.lerp(black, other.black, t) ?? black,
      white: Color.lerp(white, other.white, t) ?? white,
      grey100: Color.lerp(grey100, other.grey100, t) ?? grey100,
      grey200: Color.lerp(grey200, other.grey200, t) ?? grey200,
      grey300: Color.lerp(grey300, other.grey300, t) ?? grey300,
      grey400: Color.lerp(grey400, other.grey400, t) ?? grey400,
      grey500: Color.lerp(grey500, other.grey500, t) ?? grey500,
      orangeGradient: orangeGradient,
      shadow1: shadow1,
      // shadow2: shadow2,
      // shadow3: shadow3,
    );
  }
}
