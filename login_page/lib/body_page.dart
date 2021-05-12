import 'package:flutter/material.dart';
import 'package:login_page/custom_appbar.dart';
import 'package:login_page/log_in_body.dart';
import 'bottom_navigation_bar.dart';

class BodyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(false, true),
      //body: CustomBottomNavigationBar(),
    );
  }
}
