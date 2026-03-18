import 'package:api/config/router/router_config.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    ...routerconfig.map((e) {
      return GoRoute(path: e.patch, name: e.name, builder: e.widget);
    }),
  ],
);
