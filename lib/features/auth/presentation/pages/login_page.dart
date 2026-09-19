import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:orion_commons/core/router/app_routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('login.login'.tr(),style: Theme.of(context).textTheme.headlineLarge),
            ElevatedButton(
              onPressed: () {
                // Handle action here (e.g., Navigate to search or login)
                Navigator.pushNamed(context, AppRoutes.home);
              },
              child: const Text('go to home'),
            )
          ],
        ),
      )
    );
  }

}
