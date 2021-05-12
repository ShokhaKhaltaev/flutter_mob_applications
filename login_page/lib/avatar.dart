import 'package:flutter/material.dart';
import 'package:login_page/log_in_body.dart';

class Avatar extends StatefulWidget {

  @override
  _AvatarState createState() => _AvatarState();
}

class _AvatarState extends State<Avatar> {
  String name;
  LogInBody logInBody;
  @override

  void setState(fn) {
    name = logInBody.username.text;
    super.setState(fn);
  }
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: AssetImage('assets/person.jpg'),
      radius: 20.0,
    );
  }
}
