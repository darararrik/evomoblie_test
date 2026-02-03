import 'package:evomoblie_test/presentation/theme/colors.dart';
import 'package:flutter/material.dart';

extension ContextX on BuildContext {
  AppColors get colors => Theme.of(this).extension<AppColors>()!;
}
