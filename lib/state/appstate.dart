import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_elixir/classes/event.dart';
import 'package:task_elixir/classes/task.dart';

final currentDateProvider = StateProvider<DateTime>((ref){
  return DateTime.now();
});



final eventsProvider = FutureProvider((ref){
  return Future.value(
    [
      Event(
        id: '1',
        htmlLink: 'http://example.com',
        summary: 'Meeting',
        description: 'Project meeting',
        location: 'Conference Room',
        ColorId: '8',
        startTime: DateTime.now(),
        endTime: DateTime.now().add(Duration(hours: 1)),
        tasks: [
          Task(
            id: 'task1',
            title: 'Prepare slides',
            notes: 'Prepare slides for the project meeting',
            status: 'incomplete',
            due: DateTime.now().add(Duration(days: 1)),
            links: ['http://example.com/slides']
          ),
          Task(
            id: 'task2',
            title: 'Send invites',
            notes: 'Send meeting invites to the team',
            status: 'incomplete',
            due: DateTime.now().add(Duration(days: 1)),
            links: ['http://example.com/invites']
          ),
        ]
      ),
      Event(
        id: '2',
        htmlLink: 'http://example.com',
        summary: 'Lunch',
        description: 'Team lunch',
        location: 'Cafeteria',
        ColorId: '5',
        startTime: DateTime.now().add(Duration(hours: 2)),
        endTime: DateTime.now().add(Duration(hours: 3)),
        tasks: [

        ]
      ),
      0,
    ]
  );
});