import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        title: Text("I am rich"),
        centerTitle: true,
      ),
      body:
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 50.0, 0, 0),
            child: Column(
              children: [
                Center(child: Image.asset('assets/diamond.png')),
                SizedBox(height: 0.0),
                Text("I am Rich",
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.yellow[800],
                  letterSpacing: 2.0,
                 ),
                ),
              ],
            ),
          ),
    );
  }
}


