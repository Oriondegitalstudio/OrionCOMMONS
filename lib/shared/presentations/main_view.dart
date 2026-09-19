import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:orion_commons/core/router/app_routes.dart';
import 'package:orion_commons/core/router/route_config.dart';

class MainView extends StatefulWidget {
  final ShellRouteConfig config;

  const MainView({super.key, required this.config});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  // Map routes to bottom navigation indices
  int _getSelectedIndex(BuildContext context) {
    final currentRoute = ModalRoute.of(context)?.settings.name;
    switch (currentRoute) {
      case AppRoutes.home:
        return 0;
      case AppRoutes.search:
        return 1;
      case AppRoutes.profile:
        return 2;
      default:
        return 0;
    }
  }

  void _onItemTapped(int index) {
    if (index == _getSelectedIndex(context)) return;

    switch (index) {
      case 0:
        Navigator.pushReplacementNamed(context, AppRoutes.home);
        break;
      case 1:
        Navigator.pushReplacementNamed(context, AppRoutes.search);
        break;
      case 2:
        Navigator.pushReplacementNamed(context, AppRoutes.profile);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final selectedIndex = _getSelectedIndex(context);

    return Scaffold(
      // 1. Dynamic AppBar controlled by the active page
      appBar: widget.config.appBar,

      // 2. Dynamic Body controlled by the active page route
      body: widget.config.body,

      // 3. Dynamic BottomNavigationBar controlled by the active page flag
      bottomNavigationBar: widget.config.showBottomBar
          ? BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home_outlined),
            activeIcon: const Icon(Icons.home),
            label: 'nav.home'.tr(),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.search),
            activeIcon: const Icon(Icons.search_rounded),
            label: 'nav.search'.tr(),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person_outline),
            activeIcon: const Icon(Icons.person),
            label: 'nav.profile'.tr(),
          ),
        ],
      )
          : null, // Completely hides the bottom bar when set to false
    );
  }
}