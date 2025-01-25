import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeMainlist extends ConsumerWidget {
  const HomeMainlist({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.builder(
      itemCount: 10,
      padding: EdgeInsets.all(8),
      itemBuilder: (context, index){
        return Container(
          margin: EdgeInsets.all(4),
          height: 200,
          color: Colors.red,
        );
      },
    );
  }
}


