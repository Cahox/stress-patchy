import 'package:flutter/material.dart';

class ScheduleListItem extends StatelessWidget {
  ScheduleListItem(this.title);

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
        child: Text(title),
      ),
    );
  }
}
