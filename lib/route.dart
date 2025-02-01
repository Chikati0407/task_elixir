import 'package:go_router/go_router.dart';
import 'package:task_elixir/pages/homePage.dart';
import 'package:task_elixir/pages/loginPage.dart';

final appRoute = GoRouter(
  initialLocation: "/login",
  routes: [
    GoRoute(
      path: "/home",
      builder: (context, state) {
        return Homepage();
      }),
    GoRoute(
      path: "/login",
      builder: (context, state) {
        return LoginPage();
      }),
  ],
);


