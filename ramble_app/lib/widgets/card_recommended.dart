import 'package:flutter/material.dart';

class RecommendedCard extends StatelessWidget {
  final String imageHotel;
  final String nameHotel;
  RecommendedCard({this.imageHotel, this.nameHotel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 155,
          height: 120,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 2,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.circular(30.0),
            image: DecorationImage(
              image: AssetImage('assets/${imageHotel}'),
              fit: BoxFit.cover
            ),
          ),
        ),
        SizedBox(height: 4.0),
        Text( '$nameHotel', style: TextStyle(color: Colors.grey[700], fontSize: 11)),
      ],
    );
  }
}
