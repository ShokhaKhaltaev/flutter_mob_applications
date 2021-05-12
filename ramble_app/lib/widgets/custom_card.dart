import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String cost;
  CustomCard({this.title, this.cost});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15.0),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
          BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 4,
          offset: Offset(0, 2), // changes position of shadow
          ),
          ],
          borderRadius: BorderRadius.circular(18.0)
        ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('$title', style: TextStyle(color: Color(0xff8A8A8A), fontSize: 15.0)),
          SizedBox(height: 6.0),
          Text('$cost', style: TextStyle(color: Color(0xff979797), fontSize: 15.0, fontWeight: FontWeight.normal))
        ],
      ),
    );
  }
}
