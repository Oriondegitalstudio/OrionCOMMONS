import 'package:flutter/material.dart';

import 'package:orion_commons/core/theme/theme_constants.dart';
import 'package:orion_commons/shared/presentations/widgets/CreateButton.dart';
import 'package:orion_commons/shared/presentations/widgets/NavigationItem.dart';

class OrionBottomNavigation extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;
  final VoidCallback onCreatePressed;

  const OrionBottomNavigation({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
    required this.onCreatePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 76,
      decoration: BoxDecoration(
        color: ThemeConstants.white,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: ThemeConstants.borderColor,
        ),
        boxShadow: const [
          BoxShadow(
            color: Color(0x12000000),
            blurRadius: 20,
            offset: Offset(0, 6),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: NavigationItem(
              icon: Icons.home,
              activeIcon: Icons.home,
              label: 'Home',
              selected: selectedIndex == 0,
              onTap: () => onItemTapped(0),
            ),
          ),
          Expanded(
            child: NavigationItem(
              icon: Icons.explore_outlined,
              activeIcon: Icons.explore,
              label: 'Discover',
              selected: selectedIndex == 1,
              onTap: () => onItemTapped(1),
            ),
          ),
          Expanded(
            child: CreateButton(
              onPressed: onCreatePressed,
            ),
          ),

          Expanded(
            child: NavigationItem(
              icon: Icons.menu_book_outlined,
              activeIcon: Icons.menu_book,
              label: 'Learn',
              selected: selectedIndex == 2,
              onTap: () => onItemTapped(2),
            ),
          ),

          Expanded(
            child: NavigationItem(
              icon: Icons.person_outline,
              activeIcon: Icons.person,
              label: 'Profile',
              selected: selectedIndex == 3,
              onTap: () => onItemTapped(3),
            ),
          ),
        ],
      ),
    );
  }
}