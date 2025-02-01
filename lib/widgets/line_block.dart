import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LineBlock extends ConsumerWidget {
  const LineBlock({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainerHigh,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              radius: 4,
              onTap: () => print("aaa"),
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceContainerHighest,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Expanded(
            child: InkWell(
              onTap: () {},
              radius: 16,
            ),
          ),
        ],
      ),
    );
  }
}
