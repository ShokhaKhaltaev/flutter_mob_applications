import 'package:flutter/material.dart';
import 'file:///C:/Users/Pavilion-PC/AndroidStudioProjects/ramble_app/lib/widgets/RambleAppBar.dart';
import 'widgets/bottom_navigation_bar.dart';
import 'widgets/RambleBody.dart';
import 'widgets/details.dart';
import 'widgets/booking.dart';

class Home extends StatefulWidget {
  static List<Widget> pages = [
    Booking(),
    Details(),
    RambleBody()
  ];

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RambleAppBar(),
      body: RambleBody(),
      bottomNavigationBar: CustomBottomNavigationBar()
    );
  }
}
