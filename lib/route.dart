import 'package:go_router/go_router.dart';
import 'package:task_elixir/pages/homePage.dart';

final appRoute = GoRouter(
  initialLocation: "/home",
  routes: [
    GoRoute(
      path: "/home",
      builder: (context, state){
        return Homepage();
      }
    ),
  ],
);