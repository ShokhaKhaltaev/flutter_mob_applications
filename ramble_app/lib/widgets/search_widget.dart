import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        //padding: EdgeInsets.all(10.0),
        height: 40,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(width: 6),
            Icon(Icons.search, color: Colors.grey[400]),
            SizedBox(width: 8),
            Text('Search in all sections',
              style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey.withOpacity(0.7),
                  fontWeight: FontWeight.normal
              ),
            ),
          ],
        ),
      ),
    );
  }
}
