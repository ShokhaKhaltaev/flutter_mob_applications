import 'package:flutter/material.dart';
import '../model/travel.dart';

class TravelCard extends StatelessWidget {
  Travel travel;
  TravelCard({this.travel});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 410,
      padding: EdgeInsets.only(left: 15.0, top: 14.0),
      decoration: BoxDecoration(
        image: DecorationImage(
           image: AssetImage('assets/${travel.imageUrl}'),
          fit: BoxFit.cover
        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('${travel.city}, ${travel.country}',
          style: TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.bold,
            color: Colors.white.withOpacity(0.8)
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: Container(
              height: 55,
              width: 75,
              child: Text('${travel.infoText}',
              style:TextStyle(
                color: Colors.white,
                fontSize: 8
                ),
              ),
            ),
          ),
          Stack(
            children: [
              Icon(Icons.play_circle_fill_rounded, color: Colors.white.withOpacity(0.4), size: 68),
            ],
          )
        ],
      )
    );
  }
}
