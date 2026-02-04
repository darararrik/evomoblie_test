import 'package:flutter/material.dart';

import 'package:evomoblie_test/domain/mood.dart';
import 'package:evomoblie_test/presentation/constants/spacing.dart';
import 'package:evomoblie_test/presentation/extensions/context_x.dart';

class MoodCard extends StatelessWidget {
  const MoodCard({
    super.key,
    required this.isSelected,
    required this.mood,
    required this.onTap,
  });

  final bool isSelected;
  final Mood mood;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: BorderRadius.circular(S.p76),
          border: isSelected
              ? Border.all(color: context.colors.orange, width: S.p2)
              : null,
          boxShadow: [context.colors.shadow1],
        ),
        child: SizedBox(
          width: S.p84,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(mood.iconPath, width: S.p54),
              Text(
                mood.name,
                style: context.typography.bodySmall.copyWith(
                  color: context.colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
