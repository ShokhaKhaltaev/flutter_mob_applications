import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ArticleCard extends StatelessWidget {
  final String author;
  final String title;
  final String description;
  final String imageUrl;
  final DateTime publishAt;

  const ArticleCard({Key key, this.author, this.title, this.description, this.imageUrl, this.publishAt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
                blurRadius: 11,
                offset: Offset(0,4),
                color: Color(0XFFE9EAEF)
            ),
          ]
      ),
      child: Column(
        children: <Widget>[
          Text(author, style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.normal)),
          SizedBox(height: 8),
          Text(title, style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.normal)),
          SizedBox(height: 12.0),
          Text(description, maxLines: 5, overflow: TextOverflow.ellipsis, style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.normal)),
          SizedBox(height: 5),
          Text(DateFormat.yMMMd().format(publishAt).toString(), style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.normal)),
          SizedBox(height: 10.0),
          ClipRRect(
            borderRadius: BorderRadius.circular(6.0),
            child: Container(
              width: double.infinity,
              height: 141,
              child: Image.network(imageUrl == null ? 'https://images.unsplash.com/photo-1585829365295-ab7cd400c167?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80': imageUrl,
                fit: BoxFit.fill),
            ),
          )
        ],
      ),
    );
  }
}
