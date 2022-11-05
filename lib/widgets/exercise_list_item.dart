import 'package:flutter/material.dart';

class ExerciseListItem extends StatelessWidget {
  ExerciseListItem(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.grey[400],
          minimumSize: const Size.fromHeight(50),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Opacity(
              opacity: 0,
              child: Icon(Icons.close),
            ),
            Text(title),
            const Icon(Icons.close),
          ],
        ),
      ),
    );
  }
}
