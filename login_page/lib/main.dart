import 'package:flutter/material.dart';
import 'package:login_page/bottom_navigation_bar.dart';
import 'package:login_page/new_custom_nav_bar.dart';
import 'custom_appbar.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider<NewCustomNavBar>(
        child: CustomBottomNavigationBar(),
        create: (BuildContext context) => NewCustomNavBar()
        //builder: (BuildContext context) => NewCustomNavBar(),
      ),
    );
  }
}

class LogIn extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: CustomAppBar(true, false),
        body: CustomBottomNavigationBar()
    );
  }
}
