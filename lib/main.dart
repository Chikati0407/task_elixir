import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_elixir/theme/theme.dart';

import 'route.dart';

void main(){

  runApp(
    ProviderScope(child: MyApp())
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return MaterialApp.router(
      theme: MaterialTheme(TextTheme.of(context)).light(),
      darkTheme: MaterialTheme(TextTheme.of(context)).dark(),
      themeMode: ThemeMode.dark,
      routerConfig: appRoute,
    );
  }
}