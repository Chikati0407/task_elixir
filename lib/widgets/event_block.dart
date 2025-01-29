import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_elixir/classes/event.dart';

class EventBlock extends ConsumerStatefulWidget {
  const EventBlock({super.key, required this.event});

  final Event event;

  @override
  ConsumerState createState() => _EventBlockState(event: event);
}

class _EventBlockState extends ConsumerState<EventBlock> {
  _EventBlockState({required this.event});

  final Event event;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      height: 100,
      color: Color(pickEventColor(event.ColorId)),
    );
  }
}
