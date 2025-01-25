import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_elixir/state/appstate.dart';

class HomeBottombar extends ConsumerWidget {
  const HomeBottombar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final buttonWidth = MediaQuery.of(context).size.width * 0.2;




    return Container(
      color: Colors.transparent,
      height: 75,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SideBotton(width: buttonWidth, icon: Icons.add, mode: "L"),
          CenterButton(width: buttonWidth),
          SideBotton(width: buttonWidth, icon: Icons.add, mode: "R")
        ],
      ),
    );
  }
}

class CenterButton extends ConsumerWidget {
  const CenterButton({super.key, required this.width});

  final double width;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    
    final DateTime currentDate = ref.watch(currentDateProvider);
    
    return GestureDetector(
      onTap: () async {
        final DateTime? new_date = await showDatePicker(
          context: context,
          firstDate: currentDate.add(Duration(days: -365)),
          initialDate: currentDate,
          lastDate: currentDate.add(Duration(days: 365)),

        );

        if(new_date != null){
          ref.read(currentDateProvider.notifier).state = new_date;
        }
      },
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondaryContainer,
          borderRadius: BorderRadius.circular(30),
        ),
        height: 60,
        width: width * 2,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.arrow_drop_up_rounded,
                size: 24,
                color: Theme.of(context).colorScheme.onSecondaryContainer,
              ),
              Text(
                "${currentDate.month}/${currentDate.day}",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSecondaryContainer,
                  fontSize: 28,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class SideBotton extends ConsumerWidget {
  const SideBotton({super.key, required this.width, required this.icon, required this.mode});

  final double width;
  final IconData icon;
  final String mode;

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final currentDate = ref.watch(currentDateProvider);
    final addDay = (mode == "L") ? -1 : 1;

    return GestureDetector(
      onTap: (){

        ref.read(currentDateProvider.notifier).state =  currentDate.add(Duration(days: addDay));
      },
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondaryContainer,
          borderRadius: (mode == "L") ?
            BorderRadius.only(
              topRight: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ) : BorderRadius.only(
              topLeft: Radius.circular(30),
              bottomLeft: Radius.circular(30),
            )
        ),
        height: 60,
        width: width,
      ),
    );
  }
}
