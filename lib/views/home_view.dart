import 'package:flutter/material.dart';
import 'package:stress_patchy/views/schedule_view.dart';
import 'package:stress_patchy/views/exercises_view.dart.dart';
import 'package:stress_patchy/views/insight_view.dart';
import 'package:stress_patchy/widgets/home_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stress Patchy'),
      ),
      body: Center(
          child: Container(
            padding: const EdgeInsets.only(left: 24, top: 24, right: 24, bottom: 0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                HomeButton('Schedule', const ScheduleView()),
                HomeButton('Exercises', const ExercisesView()),
                HomeButton('insight', const InsightView()),
              ],
            ),
          )),
    );
  }
}
