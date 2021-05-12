import 'package:cooker_social_app/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';
import 'home.dart';
import 'roots/roots.dart';
import 'router.dart' as router;
import 'screens/welcome_screen.dart';

void main() {
  runApp(Fooderlich());
}

class Fooderlich extends StatelessWidget{
  const Fooderlich({Key key}) : super(key: key);

  Widget build(BuildContext context) {
    var theme = FooderlichTheme.dark();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      //home: const Home(),
      initialRoute: '/welcome',
      onGenerateRoute: router.Router.generateRoute,
    );
  }
}

