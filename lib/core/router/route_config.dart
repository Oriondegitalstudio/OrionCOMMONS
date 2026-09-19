import 'package:flutter/material.dart';

class ShellRouteConfig {
  final Widget body;
  final PreferredSizeWidget? appBar;
  final bool showBottomBar;

  const ShellRouteConfig({
    required this.body,
    this.appBar,
    this.showBottomBar = true,
  });
}