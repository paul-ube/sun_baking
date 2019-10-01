import 'package:flutter/material.dart';
import 'package:sun_baking/ui/router.dart';
import 'package:sun_baking/ui/shared/route_paths.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sun Baking',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Color.fromRGBO(255, 158, 181, 1),
        textTheme: TextTheme(
          title: TextStyle(color: Colors.black87, fontFamily: 'Montserrat',),
          body1: TextStyle(color: Colors.black87, fontFamily: 'Montserrat',),
        )
      ),
      initialRoute: RoutePaths.HomeScreen,
      onGenerateRoute: Router.generateRoute,
    );
  }
}


