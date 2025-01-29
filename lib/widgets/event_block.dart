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
  bool openState = true;

  @override
  Widget build(BuildContext context) {

    final Color mainColor = Color(pickEventColor(event.ColorId));
    final backgroundColor = mainColor.withAlpha(0x40);

    final titleBlock = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "どう？どう？どう？",
          maxLines: openState ? 100 : 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontSize: 24,color: mainColor,fontWeight: FontWeight.bold),
        ),
        IconButton(
          onPressed: (){
            setState(() {
              openState = !(openState);
            });
          },
          icon: Icon(Icons.arrow_drop_down),
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(backgroundColor)
          ),
        ),
      ],
    );

    final timeIndicator = SizedBox(
      height: 48,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("${event.startTime.hour}:${event.startTime.minute}"),
          Icon(Icons.arrow_forward),
          Text("${event.endTime.hour}:${event.endTime.minute}"),
        ],
      ),
    );

    final closeBody = Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: backgroundColor,
      ),
      padding: EdgeInsets.all(16),
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 8,
        children: [
          Icon(Icons.task_alt),
          Text("未完のタスクがあります")
        ],
      ),
    );

    final openBody = SizedBox(
      height: 300,
      width: double.infinity,
      child: CarouselView.weighted(
        flexWeights: [1,10,1],
        children: [
          Container(),
          Container(),
      ]),
    );

    final openToggle = InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: (){
        setState(() {
          openState = !(openState);
        });
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: backgroundColor,
        ),
        height: 48,
        child: Center(
          child: Text(
            openState ? "詳細を閉じる" : "詳細を見る",
            style: TextStyle(
              color: Colors.white
            ),
          ),
        )
      ),
    );


    return AnimatedContainer(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.all(16),
      height: openState ? 500 : (event.tasks.isNotEmpty ? 230 : 180),
      duration: Duration(milliseconds: 500),
      curve: Curves.easeOutExpo,
      child: Column(
        children: [
          titleBlock,
          timeIndicator,
          openState ? openBody : (event.tasks.isNotEmpty ? closeBody : Container()),
          Spacer(),
          openToggle
        ],
      )

    );
  }
}

