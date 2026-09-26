import 'package:flutter/material.dart';
import 'package:orion_commons/core/theme/theme_constants.dart';

class CreateButton extends StatelessWidget {
  final VoidCallback onPressed;

  const CreateButton({
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 58,
      height: 58,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: ThemeConstants.backgroundButton,
        boxShadow: const [
          BoxShadow(
            color: Color(0x30000000),
            blurRadius: 16,
            offset: Offset(0, 7),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        shape: const CircleBorder(),
        child: InkWell(
          onTap: onPressed,
          customBorder: const CircleBorder(),
          child: const Icon(
            Icons.add,
            size: 30,
            color: ThemeConstants.white,
          ),
        ),
      ),
    );
  }
}