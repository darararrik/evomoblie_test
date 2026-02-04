import 'package:flutter/material.dart';

import 'package:evomoblie_test/presentation/constants/spacing.dart';
import 'package:evomoblie_test/presentation/extensions/context_x.dart';
import 'package:evomoblie_test/presentation/utils/padding.dart';

class AppSlider extends StatelessWidget {
  const AppSlider({
    super.key,
    required this.value,
    required this.onChanged,
    required this.title,
    required this.lowText,
    required this.highText,
  });

  final double value;
  final void Function(double v) onChanged;
  final String title;
  final String lowText;
  final String highText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: P(top: S.p36, horizontal: S.p20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w800,
              color: context.colors.black,
            ),
          ),
          Padding(
            padding: P(top: S.p20),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: context.colors.white,
                borderRadius: BorderRadius.circular(S.p12),
                boxShadow: [context.colors.shadow1],
              ),
              child: Padding(
                padding: P(vertical: S.p16),
                child: Column(
                  children: [
                    Padding(
                      padding: P(left: S.p10, right: S.p8),
                      child: Slider(
                        value: value,
                        divisions: 5,
                        min: 0,
                        max: 5,
                        onChanged: onChanged,
                      ),
                    ),
                    Padding(
                      padding: P(left: S.p10, right: S.p8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            lowText,
                            style: TextStyle(
                              color: context.colors.grey500, // Серый X
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            highText,
                            style: TextStyle(
                              color: context.colors.grey500, // Серый X
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
