import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_playground/home_page.dart';

final routerProvider = Provider<GoRouter>(
  (ref) {
    final router = RouterNotifier(ref);
    return GoRouter(
      debugLogDiagnostics: true,
      refreshListenable: router,
      routes: router._routes,
    );
  },
);

class RouterNotifier extends ChangeNotifier {
  final Ref _ref;
  RouterNotifier(this._ref) : super();

  _redirectLogic(GoRouterState state) {
    return null;
  }

  List<GoRoute> get _routes => [
        GoRoute(path: '/', builder: (b, state) => const HomePage()),
        GoRoute(
            path: '/login',
            builder: (b, state) => const HomePage(),
            name: 'login'),
        GoRoute(
            path: '/signup',
            builder: (b, state) => const HomePage(),
            name: 'signup'),
      ];
}
