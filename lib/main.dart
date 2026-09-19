import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:orion_commons/app.dart';
import 'package:orion_commons/core/di/dependency_injection.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  
  // Initialize Dependency Injection
  await di.init();
  
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en', 'US'), Locale('es', 'ES')],
      path: 'assets/translations', // Translation files path
      fallbackLocale: const Locale('en', 'US'),
      child: const OrionCommonsApp(),
    ),
  );
}
