import 'package:flutter/material.dart';
import 'package:prize/features/home/data/models/coming_event_model.dart';
import 'package:prize/features/home/view/widgets/upcoming_events/coming_event_widget.dart';

class AllCommingEventsWidget extends StatelessWidget {
  const AllCommingEventsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<ComingEventModel> events = [
      ComingEventModel(title: 'Birthday', date: DateTime.now()),
      ComingEventModel(title: 'Graduation', date: DateTime.now()),
      ComingEventModel(title: 'Birthday', date: DateTime.now()),
    ];
    return ListView.builder(
      itemCount: events.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return ComingEventWidget(
          event: events[index],
        );
      },
    );
  }
}
