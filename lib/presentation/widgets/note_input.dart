import 'package:flutter/material.dart';

import 'package:evomoblie_test/presentation/constants/spacing.dart';
import 'package:evomoblie_test/presentation/extensions/context_x.dart';
import 'package:evomoblie_test/presentation/utils/padding.dart';

class NoteInput extends StatelessWidget {
  const NoteInput({super.key, required this.onChanged});

  final void Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: P(horizontal: S.p20, top: S.p36),
          child: Text("Заметки", style: context.typography.titleSmall),
        ),
        Padding(
          padding: P(horizontal: S.p20, top: S.p20),
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: context.colors.white,
              borderRadius: BorderRadius.circular(S.p12),
              boxShadow: [context.colors.shadow1],
            ),
            child: TextField(
              maxLines: 4,
              onChanged: onChanged,
              decoration: InputDecoration(
                hintText: "Введите заметку",
                hintStyle: context.typography.bodyMedium,
                contentPadding: P(all: S.p10),
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
