import 'package:flutter/material.dart';
import 'package:sun_baking/ui/screens/recipe_details.dart';
import 'package:sun_baking/ui/screens/home_screen.dart';
import 'package:sun_baking/ui/shared/route_paths.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePaths.HomeScreen:
        return MaterialPageRoute(
          builder: (_) => HomeScreen(),
        );

      case RoutePaths.RecipeDetails:
        var recipeName = settings.arguments;
        return MaterialPageRoute(
          builder: (_) => RecipeDetails(
            recipeTitle: recipeName,
          ),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
