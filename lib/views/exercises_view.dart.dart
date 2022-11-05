import 'package:flutter/material.dart';
import 'package:stress_patchy/views/exercise_form.dart';
import 'package:stress_patchy/widgets/exercise_list_item.dart';

class ExercisesView extends StatelessWidget {
  const ExercisesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Exercises'),
        ),
        body: Container(
            padding:
            const EdgeInsets.only(left: 24, top: 24, right: 24, bottom: 0),
            child: Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Container(
                    width: 90.0,
                    padding: const EdgeInsets.only(bottom: 12),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ExerciseForm()));
                      },
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("New"),
                            Icon(Icons.add),
                          ]),
                    ),
                  ),
                ]),
                Column(
                  children: [
                    ExerciseListItem('Exercise One'),
                    ExerciseListItem('Exercise Two'),
                    ExerciseListItem('Exercise Three'),
                  ],
                ),
              ],
            )));
  }
}
