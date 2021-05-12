import 'package:flutter/material.dart';
import 'bottom_navigation_bar.dart';
import 'booking_details.dart';

class Booking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookingDetails(),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}


