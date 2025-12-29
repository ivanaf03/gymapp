import 'package:go_router/go_router.dart';
import 'package:gymapp/features/landing/screens/landing_screen.dart';
import 'package:gymapp/features/home/screens/home_screen.dart';

final router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const LandingScreen()),
    GoRoute(path: '/home', builder: (context, state) => const HomeScreen()),
  ],
);
