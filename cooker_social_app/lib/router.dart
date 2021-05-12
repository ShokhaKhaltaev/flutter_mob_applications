import 'package:cooker_social_app/screens/welcome_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'roots/roots.dart';
import 'components/explore_card.dart';
import 'screens/explore_screen.dart';
import 'screens/recipe_screen.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case card1:
        return MaterialPageRoute(
            builder: (_) => ExploreScreen()
        );
      case card2:
        return MaterialPageRoute(
            builder: (_) => RecipesScreen()
        );
      case card3:
        return MaterialPageRoute(
            builder: (_) => Card3()
        );
      default:
        return MaterialPageRoute(
            builder: (_) => WelcomeScreen()
        );
    }
  }
}