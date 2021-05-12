import 'package:flutter/material.dart';

class CustomChip extends StatefulWidget {
  final IconData oneIcon;
  final String textChip;
  final Function onChange;
  CustomChip({this.oneIcon, this.textChip, this.onChange});

  @override
  _CustomChipState createState() => _CustomChipState();
}

class _CustomChipState extends State<CustomChip> {
  bool newSelected = false;

  void _onChange(){
    setState(() {
      newSelected = !newSelected;
    });
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:_onChange,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
            decoration: BoxDecoration(
              color: newSelected ? Colors.deepOrange : Colors.white,
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 3,
                  offset: Offset(0, 3),
                ),
              ],
            ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(widget.oneIcon, color: newSelected ? Colors.white : Colors.grey),
              SizedBox(width: 5.0),
              Text('${widget.textChip}', style: TextStyle(fontFamily: 'Roboto-medium', fontSize: 16.0, color: newSelected ? Colors.white : Colors.grey))
            ],
          )
        ),
      ),
    );
  }
}
