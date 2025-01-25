import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_elixir/pages/home_widgets/home_bottombar.dart';
import 'package:task_elixir/pages/home_widgets/home_mainlist.dart';

class Homepage extends ConsumerWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: AppBar(),
      ),
      extendBody: true,
      body: HomeMainlist(),
      bottomNavigationBar: HomeBottombar(),
    );
  }
}
