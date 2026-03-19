import 'package:api/presentacion/screen/films/films_screen.dart';
import 'package:api/presentacion/screen/films/films_detail_screen.dart';
import 'package:api/presentacion/screen/home/home_scrren.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      name: 'Home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/films',
      name: 'Films',
      builder: (context, state) => const FilmsScreen(),
    ),
    GoRoute(
      path: '/films/:id',
      name: 'FilmDetail',
      builder: (context, state) =>
          FilmsDetailScreen(id: state.pathParameters['id']!),
    ),
  ],
);
