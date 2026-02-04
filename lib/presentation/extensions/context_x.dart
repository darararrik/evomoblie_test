import 'package:evomoblie_test/presentation/theme/app_typography.dart';
import 'package:flutter/material.dart';

import 'package:evomoblie_test/presentation/l10n/app_localizations.dart';
import 'package:evomoblie_test/presentation/theme/app_colors.dart';

extension ContextX on BuildContext {
  AppColors get colors => Theme.of(this).extension<AppColors>()!;
  AppTypography get typography => Theme.of(this).extension<AppTypography>()!;
  AppLocalizations get l10n => AppLocalizations.of(this)!;
}
