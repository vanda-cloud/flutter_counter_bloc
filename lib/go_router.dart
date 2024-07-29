import 'package:flutter_counter_bloc/bloc_state_management.dart';
import 'package:flutter_counter_bloc/counter/counter_app.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
final routerConfig = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'Home',
      builder: (context, state) => HomePage(),
      routes: [
        GoRoute(
          path: 'cubit',
          name: 'Cubit Class',
          builder: (context, state) => CounterApp(),
        ),
      ],
    ),
  ],
);
