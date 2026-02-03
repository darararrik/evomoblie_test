import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage(name: 'MoodDiaryTabRoute')
class MoodDiaryTab extends StatelessWidget {
  const MoodDiaryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: const Center(child: Text('Mood Diary Tab')));
  }
}
