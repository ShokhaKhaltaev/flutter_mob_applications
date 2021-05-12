import 'package:flutter/material.dart';
import 'package:login_page/custom_appbar.dart';
import 'package:login_page/new_custom_nav_bar.dart';
import 'package:provider/provider.dart';
import 'log_in_body.dart';
import 'profile.dart';
import 'magazine.dart';


class CustomBottomNavigationBar extends StatefulWidget {

  @override
  _CustomBottomNavigationBarState createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {

  static List<Widget> newPages = [
    LogInBody(),
    Magazine(),
    Profile()
  ];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<NewCustomNavBar>(context);
    return Scaffold(
      appBar: CustomAppBar(true, false),
      body: newPages[provider.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.login),
              label: 'Login'),
          BottomNavigationBarItem(
              icon: Icon(Icons.store),
              label: 'Store'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_rounded),
              label: 'Profile')
        ],
        selectedItemColor: Colors.green,
        currentIndex: provider.currentIndex,
        onTap: (int index){
          provider.currentIndex = index;
        },
      ),
    );
  }
}

