import 'package:flutter/material.dart';
import '../roots/roots.dart';
class WelcomeScreen extends StatelessWidget {
  void goNext(BuildContext context){
    Navigator.pushNamed(context, card1);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://images.unsplash.com/photo-1619964346678-252094a900aa?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=329&q=80'),
            fit: BoxFit.cover
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(child: Text('Welcome to Fooderlich!', style: TextStyle(fontSize: 35, color: Colors.white))),
            SizedBox(height: 10.0),
            ElevatedButton(
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0)),
                  textStyle: MaterialStateProperty.all(TextStyle(fontSize: 30))),
                onPressed: () => goNext(context),
                child: Text('GO'))
          ],
        ),
      ),
    );
  }
}
