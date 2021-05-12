import 'package:flutter/material.dart';
import 'RambleBody.dart';
import 'file:///C:/Users/Pavilion-PC/AndroidStudioProjects/ramble_app/lib/widgets/details.dart';
import 'booking.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 75,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          IconButton(
              icon: Icon(Icons.search, size: 40, color: Colors.grey[400]),
              onPressed: () => Navigator.pop(context)
              ),
          IconButton(
              icon: Icon(Icons.date_range, size: 40, color: Colors.grey[400]),
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Details()))),
          IconButton(
              icon: Icon(Icons.home_rounded, size: 40, color: Color(0xffFFB359)),
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Booking())))
        ],
      ),
    );
  }
}
