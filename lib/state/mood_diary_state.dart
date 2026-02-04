import 'package:equatable/equatable.dart';

import 'package:evomoblie_test/domain/mood.dart';

class MoodDiaryState extends Equatable {
  final List<Mood> moods;
  final int selectedMoodIndex;
  final double stressLevel;
  final double selfEsteemLevel;
  final String note;
  final DateTime selectedDate;

  const MoodDiaryState({
    required this.moods,
    this.selectedMoodIndex = -1,
    this.stressLevel = 1,
    this.selfEsteemLevel = 1,
    this.note = '',
    required this.selectedDate,
  });

  @override
  List<Object?> get props => [
    moods,
    selectedMoodIndex,
    stressLevel,
    selfEsteemLevel,
    note,
    selectedDate,
  ];

  Mood? get selectedMood =>
      selectedMoodIndex >= 0 ? moods[selectedMoodIndex] : null;

  bool get isValid => selectedMoodIndex >= 0;

  MoodDiaryState copyWith({
    List<Mood>? moods,
    int? selectedMoodIndex,
    double? stressLevel,
    double? selfEsteemLevel,
    String? note,
    DateTime? selectedDate,
  }) {
    return MoodDiaryState(
      moods: moods ?? this.moods,
      selectedMoodIndex: selectedMoodIndex ?? this.selectedMoodIndex,
      stressLevel: stressLevel ?? this.stressLevel,
      selfEsteemLevel: selfEsteemLevel ?? this.selfEsteemLevel,
      note: note ?? this.note,
      selectedDate: selectedDate ?? this.selectedDate,
    );
  }
}
