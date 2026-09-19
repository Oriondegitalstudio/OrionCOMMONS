import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orion_commons/core/constants/app_constants.dart';
import 'package:orion_commons/core/di/dependency_injection.dart';
import 'package:orion_commons/core/router/app_routes.dart';
import 'package:orion_commons/core/theme/app_theme.dart';
import 'package:orion_commons/features/auth/presentation/cubit/auth_cubit.dart';

class OrionCommonsApp extends StatelessWidget {
  const OrionCommonsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthCubit>(
          create: (context) => sl<AuthCubit>(),
        ),
      ],
      child: MaterialApp(
        title: AppConstants.appTitle,
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        
        // Localization
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,

        // Routing
        initialRoute: AppRoutes.login,
        onGenerateRoute: AppRoutes.onGenerateRoute,
      ),
    );
  }
}
