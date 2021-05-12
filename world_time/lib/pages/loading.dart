import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:world_time/services/world_time.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setWorldTime() async{
    WorldTime new_time = WorldTime(flag: "Uzbekistan", location: "Tashkent", url: "Asia/Tashkent");
    await new_time.getTime();
    Navigator.pushReplacementNamed(context, "/home", arguments: {
      'location': new_time.location,
      'flag': new_time.flag,
      'time': new_time.time,
      'isDayTime' : new_time.isDayTime
    });
  }
  @override
  void initState() {
    setWorldTime();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body:
        Center(
          child:
            SpinKitFadingCircle(
              size: 80.0,
              color: Colors.white,
            ),
        ),
      );
  }
}
