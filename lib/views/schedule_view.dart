import 'package:flutter/material.dart';
import 'package:stress_patchy/views/schedule_form.dart';
import 'package:stress_patchy/widgets/schedule_list_item.dart';

class ScheduleView extends StatelessWidget {
  const ScheduleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Schedule'),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 24, top: 24, right: 24, bottom: 0),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 100,
                child:
                ElevatedButton(onPressed: () {}, child: Text('Previous')),
              ),
              Container(
                width: 100,
                child: ElevatedButton(onPressed: () {}, child: Text('Next')),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ScheduleForm()));
                },
                style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(), fixedSize: const Size(60, 60)),
                child: const Icon(Icons.add))
          ]),
          const SizedBox(height: 12),
          Column(
            children: [
              ScheduleListItem('Schedule One'),
              ScheduleListItem('Schedule Two'),
              ScheduleListItem('Schedule Three'),
            ],
          ),
        ]),
      ),
    );
  }
}
