import 'package:flutter/material.dart';

class ScheduleForm extends StatelessWidget {
  const ScheduleForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('New Schedule Item'),
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
                  labelText: 'Type',
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                children: const [
                  Flexible(
                      child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal)),
                      labelText: 'Date',
                    ),
                  )),
                  SizedBox(width: 12),
                  Flexible(
                      child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal)),
                      labelText: 'Time',
                    ),
                  )),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              const TextField(
                maxLines: 4,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal)),
                  labelText: 'Description',
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
