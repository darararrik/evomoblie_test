import 'package:flutter/material.dart';

class AppColors extends ThemeExtension<AppColors> {
  final Color orange;
  final Color black;
  final Color white;
  final Color gray100;
  final Color gray200;
  final Color gray300;
  final Color gray400;
  final LinearGradient orangeGradient;

  AppColors({
    required this.orange,
    required this.black,
    required this.white,
    required this.gray100,
    required this.gray200,
    required this.gray300,
    required this.gray400,
    required this.orangeGradient,
  });
  @override
  AppColors copyWith({
    Color? orange,
    Color? black,
    Color? white,
    Color? gray100,
    Color? gray200,
    Color? gray300,
    Color? gray400,
    LinearGradient? orangeGradient,
  }) {
    return AppColors(
      orange: orange ?? this.orange,
      black: black ?? this.black,
      white: white ?? this.white,
      gray100: gray100 ?? this.gray100,
      gray200: gray200 ?? this.gray200,
      gray300: gray300 ?? this.gray300,
      gray400: gray400 ?? this.gray400,
      orangeGradient: orangeGradient ?? this.orangeGradient,
    );
  }

  @override
  AppColors lerp(ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) {
      return this;
    }
    return AppColors(
      orange: Color.lerp(orange, other.orange, t) ?? orange,
      black: Color.lerp(black, other.black, t) ?? black,
      white: Color.lerp(white, other.white, t) ?? white,
      gray100: Color.lerp(gray100, other.gray100, t) ?? gray100,
      gray200: Color.lerp(gray200, other.gray200, t) ?? gray200,
      gray300: Color.lerp(gray300, other.gray300, t) ?? gray300,
      gray400: Color.lerp(gray400, other.gray400, t) ?? gray400,
      orangeGradient: orangeGradient,
    );
  }
}
