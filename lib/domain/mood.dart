import 'package:equatable/equatable.dart';

class Mood extends Equatable {
  final int id;
  final String name;
  final String iconPath;
  final List<String> subEmotions;

  const Mood({
    required this.id,
    required this.name,
    required this.iconPath,
    required this.subEmotions,
  });

  @override
  List<Object?> get props => [id, name, iconPath, subEmotions];
}
