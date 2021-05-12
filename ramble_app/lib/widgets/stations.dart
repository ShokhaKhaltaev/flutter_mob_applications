import 'package:flutter/material.dart';
import 'dart:math';
class Stations extends StatelessWidget {
  final String count;
  final String destination;
  final String hours;

  Stations({this.count, this.destination, this.hours});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          RotationTransition(
            turns: AlwaysStoppedAnimation(20/360),
            child: Container(
              height: 23,
              width: 18,
              decoration: BoxDecoration(
                color: Color(0xffFFB359),
                borderRadius: BorderRadius.circular(5)
              ),
              child: RotationTransition(turns: AlwaysStoppedAnimation(-20/360),
                  child: Center(child: Text('$count', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11)))),
            ),
          ),
          SizedBox(width: 12.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('$destination', style: TextStyle(color: Color(0xff919191), fontSize: 12, fontWeight: FontWeight.bold)),
              Text('$hours', style: TextStyle(fontSize: 11, fontWeight: FontWeight.normal, color: Colors.grey[400]))
            ],
          )
        ],
      ),
    );
  }
}
