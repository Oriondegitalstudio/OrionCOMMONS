import 'package:flutter/material.dart';
import 'package:orion_commons/features/auth/presentation/pages/login_page.dart';
import 'package:orion_commons/shared/presentations/main_view.dart';
import 'route_config.dart';

class AppRoutes {
  static const String login = '/login';
  static const String home = '/home';
  static const String search = '/search';
  static const String profile = '/profile';
  static const String details = '/details';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case login:
        return MaterialPageRoute(builder: (_) => const LoginPage());

      case home:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => MainView(
            config: ShellRouteConfig(
              showBottomBar: true, // Shows bottom bar
              appBar: AppBar(title: const Text("Home")), // Shows AppBar
              body: const Center(child: Text("Home Content")),
            ),
          ),
        );

      case search:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const MainView(
            config: ShellRouteConfig(
              showBottomBar: true, // Shows bottom bar
              appBar: null, // HIDES AppBar completely
              body: Center(child: Text("Search Field & Grid")),
            ),
          ),
        );

      case details:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => MainView(
            config: ShellRouteConfig(
              showBottomBar: false, // HIDES bottom bar completely
              appBar: AppBar(title: const Text("Item Details")), // Shows AppBar
              body: const Center(child: Text("Deep detail page screen detail")),
            ),
          ),
        );
      case profile:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => MainView(
            config: ShellRouteConfig(
              showBottomBar: true, // Shows bottom bar
              appBar: AppBar(title: const Text("Profile")), // Shows AppBar
              body: const Center(child: Text("Profile")),
            ),
          ),
          );

      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(body: Center(child: Text('Route Not Found'))),
        );
    }
  }
}