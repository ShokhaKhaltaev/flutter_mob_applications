import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_page/avatar.dart';
import 'package:login_page/log_in_body.dart';

class CustomAppBar extends StatelessWidget implements PreferredSize{
  bool showIcon = true;
  bool showProfileImage = false;
  LogInBody logInBody;

  CustomAppBar(this.showIcon, this.showProfileImage);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 75,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(12.0)
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon( showIcon ? Icons.menu : Icons.arrow_back,
                color: Colors.blue),
                iconSize: 30.0,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: SvgPicture.asset('assets/logosvg.svg',
                    height: 35),
                  ),
                  SizedBox(height: 5.0),
                  Text('North',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0
                    ),
                  ),
                ],
              ),
              !showProfileImage ? IconButton(
                  icon: Icon(Icons.login,
                  color: Colors.blue),
                  iconSize: 30.0,
                  onPressed: () => print('LogIn')
              ):
              Avatar()
            ],
          ),
        ),
      ),
    );
  }

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(80);
}
