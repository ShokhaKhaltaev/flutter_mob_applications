import 'package:flutter/material.dart';
import 'home.dart';
void main() {
  runApp(Ramble());
}

class Ramble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto-regular'
      ),
      home: Home(),
    );
  }
}


