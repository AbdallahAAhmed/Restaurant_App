import 'package:flutter/material.dart';
import 'package:restaurant_app/constrants/route_string.dart';
import 'package:restaurant_app/presentation/screens/splash_screen.dart';
import 'package:restaurant_app/presentation/screens/tips_screen.dart';

class AppRoute {

  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(builder: (_) => const Splash() );
      case tipsScreen:
        return MaterialPageRoute(builder: (_) => const TipsScreen() );
    }
  }
}