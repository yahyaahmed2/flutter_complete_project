import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/routing/routes.dart';
import 'package:flutter_complete_project/features/onboarding/onboarding_screen.dart';
import 'package:flutter_complete_project/features/ui/widgets/login_screen.dart';
class AppRouter {

  Route generateRoute(RouteSettings settings){

    switch(settings.name){
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        ); // MaterialPageRoute
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        ); // MaterialPageRoute
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ), // Center
          ), // Scaffold
        ); // MaterialPageRoute
    }
  }
}