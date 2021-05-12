import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final bool isPassword;
  CustomTextField({this.hint, this.isPassword = false});
  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      obscureText: isPassword,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 18),
      style: TextStyle(
        color: Color(0xff262626),
        fontSize: 17.0,
        fontFamily: 'SFProText',
        fontWeight: FontWeight.normal
      ),
      placeholder: hint,
      placeholderStyle: TextStyle(
        color: Color(0xff000000).withOpacity(0.2),
        fontSize: 17.0,
        fontFamily: 'SF Pro Text',
        fontWeight: FontWeight.normal
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xfffafafa),
        border: Border.all(color: Color(0xff000000).withOpacity(0.5)),
        boxShadow: [
              BoxShadow(
                  color: Colors.black54,
                  blurRadius: 5.0,
                  offset: Offset(0.0, 0.75)
              ),
        ]
      ),
    );
  }
}
