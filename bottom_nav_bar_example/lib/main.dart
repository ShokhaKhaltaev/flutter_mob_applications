import 'package:bottom_nav_bar_example/custom_button.dart';
import 'package:bottom_nav_bar_example/input_textfield.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      debugShowCheckedModeBanner: false,
      color: Colors.white,
      home: BodyPage(),
    );
  }
}

class BodyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SearchBody()
    );
  }
}

class SearchBody extends StatefulWidget {
  @override
  _SearchBodyState createState() => _SearchBodyState();
}

class _SearchBodyState extends State<SearchBody> {
  @override

  void initState() {
    name.addListener(isEmpty);
    password.addListener(isEmpty);
    super.initState();
  }
   @override
  void dispose() {
    name.dispose();
    password.dispose();
    super.dispose();
  }

  final name = TextEditingController();
  final password = TextEditingController();
  bool disabled = false;

  void isEmpty(){
    if(name.text.isEmpty && password.text.isEmpty){
      disabled = true;
    }else{
      disabled =false;
    }
  }

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Instagram', style: TextStyle(
            fontSize: 38.0
            ),
          ),
          SizedBox(height: 40.0),
          CustomTextField(hint: 'Name', isPassword: false),
          SizedBox(height: 10.0),
          CustomTextField(hint: 'Password', isPassword: true),
          SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 5.0),
              Text('Forgot password?', style: TextStyle(color: Colors.blue, fontSize: 15.0, fontFamily: 'SF Pro Text', fontWeight: FontWeight.w500)),
            ],
          ),
          SizedBox(height: 30.0),
          CustomButton(text: 'Log In',onChangeState:isEmpty),
        ],
      ),
    );
  }
}
