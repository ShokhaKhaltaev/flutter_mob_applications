import 'package:flutter/material.dart';

class MainLayout extends StatefulWidget {
  final Widget child;
  MainLayout({this.child});

  @override
  _MainLayoutState createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 11,
                    offset: Offset(0,4),
                    color: Color(0XFFE9EAEF)
                  ),
                ]
              ),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Icon(Icons.menu, color: Colors.blue),
                  SizedBox(width: 20),
                  Text('News',
                      style: TextStyle(color: Colors.black, fontSize: 20)),
                ],
              ),
            )),
        body: Container(
          child: widget.child,
          color: Colors.white,
          constraints: BoxConstraints.expand(),
        ),
      ),
    );
  }
}
