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
  CarouselController controller = CarouselController(
    initialItem: 0,
  );

  @override
  Widget build(BuildContext context) {

    final Color mainColor = Color(pickEventColor(event.ColorId));
    final backgroundColor = mainColor.withAlpha(0x40);

    final titleBlock = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            event.summary,
            maxLines: openState ? 2 : 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 24,color: mainColor,fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(width: 8,),
        IconButton(
          onPressed: (){
            setState(() {
              openState = !(openState);
            });
          },
          icon: Icon(openState ? Icons.arrow_drop_up : Icons.arrow_drop_down),
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
          Text(
            "${event.startTime.hour.toString().padLeft(2,"0")} : ${event.startTime.minute.toString().padLeft(2,"0")}",
            style: TextStyle(
              fontSize: 16
            ),
          ),
          Icon(Icons.arrow_forward),
          Text(
            "${event.endTime.hour.toString().padLeft(2,"0")} : ${event.endTime.minute.toString().padLeft(2,"0")}",
            style: TextStyle(
                fontSize: 16
            ),
          ),
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
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        backgroundColor: backgroundColor,
        enableSplash: false,
        controller: controller,
        flexWeights: [1],
        consumeMaxWeight: true,
        children: [
          eventBlockDescriptionBox(event: event, backgroundColor: backgroundColor, mode: "description"),
          eventBlockDescriptionBox(event: event, backgroundColor: backgroundColor, mode: "task"),
        ]
      ),
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


class eventBlockDescriptionBox extends ConsumerWidget {
  const eventBlockDescriptionBox({super.key, required this.event, required this.backgroundColor, required this.mode});

  final Event event;
  final Color backgroundColor;
  final String mode; //task or description

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 8,
        children: [
          Text(
            (mode == "task") ? "未完のタスク" : "詳細",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: backgroundColor.withAlpha(0xff),
            ),
          ),
          Expanded(
            child: (mode == "task")
              ? ListView.separated(
                separatorBuilder: (context, index){
                  return SizedBox(height: 8,);
                },
                itemCount: event.tasks.length,
                itemBuilder: (context, index){
                  return eventBlockDescriptionBoxTask(backgroundColor: backgroundColor);
                },
              )
              : ListView(
                children: [
                  eventBlockDescriptionBoxDetail(icon: Icons.description, text: event.description, backgroundColor: backgroundColor),
                  SizedBox(height: 8,),
                  eventBlockDescriptionBoxDetail(icon: Icons.map, text: event.location, backgroundColor: backgroundColor),
                  SizedBox(height: 8,),
                  eventBlockDescriptionBoxDetail(icon: Icons.link, text: "外部アプリで開く", backgroundColor: backgroundColor.withAlpha(0x90), link: event.htmlLink,),
                ],
              ),
          ),
        ],
      ),
    );
  }
}

class eventBlockDescriptionBoxTask extends ConsumerWidget {
  const eventBlockDescriptionBoxTask({super.key, required this.backgroundColor});

  final Color backgroundColor;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: backgroundColor,
      ),
      padding: EdgeInsets.all(4),
      height: 60,
      child: Row(
        children: [

        ],
      ),
    );
  }
}

class eventBlockDescriptionBoxDetail extends ConsumerWidget {
  const eventBlockDescriptionBoxDetail({super.key, required this.icon, required this.text, required this.backgroundColor, this.link});

  final IconData icon;
  final String text;
  final Color backgroundColor;
  final String? link;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      borderRadius: BorderRadius.circular(4),
      onTap: () async {
        if (link != null){
          // await launchUrl(
          //     Uri.parse(link!),
          //     mode: LaunchMode.platformDefault,
          //     webOnlyWindowName: "_blank"
          // );
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("URLに遷移するはず")));
        }
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: backgroundColor,
        ),
        padding: EdgeInsets.all(4),
        height: 48,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: 8,),
            Icon(
              icon
            ),
            SizedBox(width: 8,),
            Expanded(
              child: Tooltip(
                message: text,
                child: Text(
                  text,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 16
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}