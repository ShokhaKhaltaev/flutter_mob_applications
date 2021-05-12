import 'package:flutter/material.dart';

class CountryCustomCard extends StatelessWidget {
  final String imageUrl;
  final String destination;
  CountryCustomCard({this.imageUrl, this.destination});

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: 150,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 14.0),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Text('$destination', style: TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 18.0)),
        ),
      ),
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
            image: AssetImage('assets/${imageUrl}'),
            fit: BoxFit.cover
        ),
      ),
    );
  }
}
