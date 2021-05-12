import 'package:flutter/material.dart';
import 'package:flutter_app/quote.dart';

class QuotedCard extends StatelessWidget {
  final Quote quote;
  final Function delete;
  QuotedCard({this.quote, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(quote.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 6.0),
            Text(quote.author,
              style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[600]
              ),
            ),
            SizedBox(height: 8.0),
            FlatButton.icon(
              label: Text("Delete"),
              onPressed: delete,
              icon: Icon(Icons.delete),
              color: Colors.red,
              textColor: Colors.white,
            )
          ],
        ),
      ),
    );;
  }
}