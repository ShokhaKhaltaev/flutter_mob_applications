import 'package:cooker_social_app/fooderlich_theme.dart';
import 'package:flutter/material.dart';
import 'circle_image.dart';

class AuthorCard extends StatefulWidget {
  const AuthorCard({Key key, this.authorName, this.title, this.imageProvider}) : super(key: key);

  final String authorName;
  final String title;
  final ImageProvider imageProvider;

  @override
  _AuthorCardState createState() => _AuthorCardState();
}

class _AuthorCardState extends State<AuthorCard> {
  bool _isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CircleImage(widget.imageProvider, imageRadius: 28.0),
          SizedBox(width: 8.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(widget.authorName, style: FooderlichTheme.lightTextTheme.headline2),
              Text(widget.title, style: FooderlichTheme.lightTextTheme.headline3)
            ],
          ),
          IconButton(
              icon: Icon(_isFavorited ? Icons.favorite : Icons.favorite_border),
              iconSize: 30,
              color: Colors.red[400],
              onPressed: (){
                setState(() {
                  _isFavorited = !_isFavorited;
                });
              }
          ),
        ],
      ),
    );
  }
}
