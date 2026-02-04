import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:group_button/group_button.dart';

import 'package:evomoblie_test/presentation/constants/spacing.dart';
import 'package:evomoblie_test/presentation/extensions/context_x.dart';
import 'package:evomoblie_test/presentation/utils/padding.dart';
import 'package:evomoblie_test/presentation/widgets/widgets.dart';
import 'package:evomoblie_test/state/mood_cubit.dart';
import 'package:evomoblie_test/state/mood_diary_state.dart';

@RoutePage(name: 'MoodDiaryTabRoute')
class MoodDiaryTab extends StatelessWidget {
  const MoodDiaryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<MoodDiaryCubit, MoodDiaryState>(
        builder: (context, state) {
          return CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: P(horizontal: S.p20, top: S.p30),
                      child: Text(
                        context.l10n.whatAreYouFeeling,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: context.colors.black,
                        ),
                      ),
                    ),
                    Padding(
                      padding: P(top: S.p20),
                      child: SizedBox(
                        height: S.p118,
                        child: ListView.separated(
                          clipBehavior: Clip.none,
                          scrollDirection: Axis.horizontal,
                          padding: P(horizontal: S.p20),
                          itemCount: state.moods.length,
                          itemBuilder: (context, index) {
                            final mood = state.moods[index];
                            final isSelected = index == state.selectedMoodIndex;
                            return MoodCard(
                              isSelected: isSelected,
                              mood: mood,
                              onTap: () => context
                                  .read<MoodDiaryCubit>()
                                  .selectMood(index),
                            );
                          },
                          separatorBuilder: (_, _) =>
                              const SizedBox(width: S.p12),
                        ),
                      ),
                    ),
                    if (state.selectedMood != null) ...[
                      Padding(
                        padding: P(horizontal: S.p20, top: S.p20),
                        child: GroupButton<String>(
                          isRadio: false,
                          buttons: state.selectedMood!.subEmotions,
                          options: GroupButtonOptions(
                            groupingType: GroupingType.wrap,
                            mainGroupAlignment: MainGroupAlignment.start,
                          ),
                          buttonBuilder: (isSelected, value, context) {
                            return DecoratedBox(
                              decoration: BoxDecoration(
                                color: isSelected
                                    ? context.colors.orange
                                    : context.colors.white,
                                borderRadius: BorderRadius.circular(S.p4),
                                boxShadow: [context.colors.shadow1],
                              ),
                              child: Padding(
                                padding: P(horizontal: S.p8, vertical: S.p2),
                                child: Text(
                                  value,
                                  style: TextStyle(
                                    color: isSelected
                                        ? context.colors.white
                                        : context.colors.black,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],

                    AppSlider(
                      title: context.l10n.stressLevel,
                      value: state.stressLevel,
                      onChanged: (value) =>
                          context.read<MoodDiaryCubit>().updateStress(value),
                      lowText: context.l10n.low,
                      highText: context.l10n.high,
                    ),
                    AppSlider(
                      title: context.l10n.selfEsteemLevel,
                      value: state.selfEsteemLevel,
                      onChanged: (value) => context
                          .read<MoodDiaryCubit>()
                          .updateSelfEsteem(value),
                      lowText: context.l10n.uncertainty,
                      highText: context.l10n.confidence,
                    ),

                    NoteInput(
                      onChanged: (value) =>
                          context.read<MoodDiaryCubit>().updateNote(value),
                    ),

                    Padding(
                      padding: P(horizontal: S.p20, vertical: S.p36),
                      child: SizedBox(
                        width: double.infinity,
                        height: S.p44,
                        child: ElevatedButton(
                          onPressed: state.isValid
                              ? () => context.read<MoodDiaryCubit>().save()
                              : null,
                          child: Text(
                            context.l10n.save,
                            style: TextStyle(
                              color: context.colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
