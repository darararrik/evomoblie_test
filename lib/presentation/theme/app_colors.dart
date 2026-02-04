part of 'theme.dart';

final AppColors _colors = AppColors(
  orange: const Color(0xFFFF8702),
  black: const Color(0xFF4C4C69),
  white: const Color(0xFFFFFFFF),
  grey100: const Color(0xFFF5F5F5),
  grey200: const Color(0xFFBCBCBF),
  grey300: const Color(0xFFBDBDBD),
  grey400: const Color(0xFFF2F2F2),
  grey500: const Color(0xFF919EAB),
  orangeGradient: const LinearGradient(
    colors: [Color(0xFFF57C00), Color(0xFFFF9800)],
  ),
  shadow1: BoxShadow(
    color: Color.fromRGBO(182, 161, 192, 0.11),
    blurRadius: 10.8,
    offset: Offset(2, 4),
    spreadRadius: 0,
  ),
);
