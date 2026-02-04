import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:evomoblie_test/domain/mood_repo.dart';
import 'package:evomoblie_test/state/mood_diary_state.dart';

class MoodDiaryCubit extends Cubit<MoodDiaryState> {
  final IMoodRepository _repo;

  MoodDiaryCubit(this._repo)
    : super(MoodDiaryState(moods: [], selectedDate: DateTime.now())) {
    _init();
  }

  void _init() {
    emit(state.copyWith(moods: _repo.getMoods()));
  }

  void selectMood(int index) {
    emit(
      state.copyWith(
        selectedMoodIndex: state.selectedMoodIndex == index ? -1 : index,
      ),
    );
  }

  void selectDate(DateTime date) {
    emit(state.copyWith(selectedDate: date));
  }

  void updateStress(double val) => emit(state.copyWith(stressLevel: val));
  void updateSelfEsteem(double val) =>
      emit(state.copyWith(selfEsteemLevel: val));
  void updateNote(String text) => emit(state.copyWith(note: text));

  void save() {
    print("Saved: ${state.selectedMood?.name}, Stress: ${state.stressLevel}");
  }
}
