import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_elixir/classes/event.dart';

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
        ColorId: '1',
        startTime: DateTime.now(),
        endTime: DateTime.now().add(Duration(hours: 1)),
      ),
      Event(
        id: '2',
        htmlLink: 'http://example.com',
        summary: 'Lunch',
        description: 'Team lunch',
        location: 'Cafeteria',
        ColorId: '2',
        startTime: DateTime.now().add(Duration(hours: 2)),
        endTime: DateTime.now().add(Duration(hours: 3)),
      ),
    ]
  );
});