import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final String text;
  bool disabled = false;
  Function onChangeState;
  CustomButton({this.text, this.onChangeState});

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {

  @override

  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 15.0),
      decoration: BoxDecoration(
        color: widget.disabled ? Colors.grey : Colors.blue,
        borderRadius: BorderRadius.circular(8.0)
      ),
      child: Center(child: Text('${widget.text}', style: TextStyle(color: widget.disabled ? Colors.black : Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold))),
    );
  }
}
