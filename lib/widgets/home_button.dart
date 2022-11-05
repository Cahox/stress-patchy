import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  HomeButton(this.title, this.link);

  final String title;
  final StatelessWidget link;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.grey[400],
          minimumSize: const Size.fromHeight(50),
        ),
        child: Text(title),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => link),
          );
        },
      ),
    );
  }
}
