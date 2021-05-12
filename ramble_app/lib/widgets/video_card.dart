import 'package:flutter/material.dart';

class VideoCard extends StatelessWidget {
  final String image;

  VideoCard({this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 14.0),
        child: Align(
          alignment: Alignment.center,
          child: Icon(Icons.play_circle_fill_rounded, color: Colors.white.withOpacity(0.4), size: 68),
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
            image: AssetImage('assets/$image'),
            fit: BoxFit.cover
        ),
      ),
    );
  }
}
