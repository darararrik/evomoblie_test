import 'package:flutter/material.dart';

import 'package:evomoblie_test/presentation/theme/colors.dart';

extension ContextX on BuildContext {
  AppColors get colors => Theme.of(this).extension<AppColors>()!;
}
