import 'package:flutter/material.dart';

import 'package:orion_commons/core/router/app_routes.dart';
import 'package:orion_commons/core/router/route_config.dart';
import 'package:orion_commons/core/theme/theme_constants.dart';
import 'package:orion_commons/shared/presentations/widgets/CreateButton.dart';
import 'package:orion_commons/shared/presentations/widgets/OrionBottomNavigation.dart';

class MainView extends StatefulWidget {
  final ShellRouteConfig config;

  const MainView({
    super.key,
    required this.config,
  });

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _getSelectedIndex(BuildContext context) {
    final currentRoute = ModalRoute.of(context)?.settings.name;

    switch (currentRoute) {
      case AppRoutes.home:
        return 0;

      case AppRoutes.discover:
        return 1;

      case AppRoutes.learn:
        return 2;

      case AppRoutes.profile:
        return 3;

      default:
        return -1;
    }
  }

  void _onNavigationItemTapped(int index) {
    final currentIndex = _getSelectedIndex(context);

    if (index == currentIndex) {
      return;
    }

    switch (index) {
      case 0:
        Navigator.pushReplacementNamed(
          context,
          AppRoutes.home,
        );
        break;

      case 1:
        Navigator.pushReplacementNamed(
          context,
          AppRoutes.discover,
        );
        break;

      case 2:
        Navigator.pushReplacementNamed(
          context,
          AppRoutes.learn,
        );
        break;

      case 3:
        Navigator.pushReplacementNamed(
          context,
          AppRoutes.profile,
        );
        break;
    }
  }

  void _onCreatePressed() {
    Navigator.pushNamed(
      context,
      AppRoutes.create,
    );
  }

  @override
  Widget build(BuildContext context) {
    final selectedIndex = _getSelectedIndex(context);

    return Scaffold(
      backgroundColor: ThemeConstants.backgroundColor,
      appBar: widget.config.appBar,
      body: widget.config.body,


      bottomNavigationBar: widget.config.showBottomBar
          ? SafeArea(
        top: false,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            16,
            0,
            16,
            12,
          ),
          child: OrionBottomNavigation(
            selectedIndex: selectedIndex,
            onItemTapped: _onNavigationItemTapped,
            onCreatePressed: _onCreatePressed,
          ),
        ),
      )
          : null,
    );
  }
}





