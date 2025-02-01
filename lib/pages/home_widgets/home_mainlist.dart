import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_elixir/classes/event.dart';
import 'package:task_elixir/state/appstate.dart';
import 'package:task_elixir/widgets/event_block.dart';
import 'package:task_elixir/widgets/line_block.dart';

class HomeMainlist extends ConsumerWidget {
  const HomeMainlist({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final eventList = ref.watch(eventsProvider);

    return eventList.when(
      data: (events) {
        return ListView.separated(
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 16,
            );
          },
          itemCount: events.length,
          padding: EdgeInsets.all(8),
          itemBuilder: (context, index) {
            if (events[index] is Event) {
              return EventBlock(
                event: events[index] as Event,
              );
            } else {
              return LineBlock();
            }
          },
        );
      },
      error: (object, stacktrace) {
        return Container();
      },
      loading: () {
        return Container();
      },
    );
  }
}
