import 'package:flutter/material.dart';
import 'package:lock_it/features/auth/presentation/screens/on_boarding_screen.dart';
import 'package:lock_it/features/auth/presentation/screens/sign_in.dart';

import 'routes.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
            builder: (context) => const OnBoardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (context) => const SignIn());
      default:
        return MaterialPageRoute(
            builder: (context) => Scaffold(
                  body: Center(
                    child: Text(
                      'No route defined for ${settings.name}',
                    ),
                  ),
                ));
    }
  }
}
