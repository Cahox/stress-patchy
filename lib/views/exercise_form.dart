import 'package:flutter/material.dart';
import 'package:stress_patchy/widgets/exercise_list_item.dart';

class ExerciseForm extends StatelessWidget {
  const ExerciseForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('New Exercise'),
        ),
        body: Container(
          padding:
          const EdgeInsets.only(left: 24, top: 24, right: 24, bottom: 0),
          child: Column(
            children: [
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal)),
                  labelText: 'Name',
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal)),
                  labelText: 'Link',
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(onPressed: () {}, child: Text('Cancel')),
                  ElevatedButton(onPressed: () {}, child: Text('Save')),
                ],
              )
            ],
          ),
        ));
  }
}
