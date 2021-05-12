import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class RambleAppBar extends StatelessWidget implements PreferredSize{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.only(left: 12.0, right: 13.0),
        height: 90,
        decoration: BoxDecoration(
           color: Colors.white
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 13.0),
                Text('Ramble',
                style: GoogleFonts.getFont('Roboto',
                textStyle: TextStyle(
                    color: Color(0xffFFB359),
                    fontWeight: FontWeight.bold,
                    fontSize: 34,
                    letterSpacing: 1.0,
                    shadows: <Shadow>[
                      Shadow(
                        blurRadius: 10.0,
                        color: Colors.grey.withOpacity(0.8),
                        offset: Offset(5.0, 5.0),
                      ),
                    ]
                ),
                  ),
                ),
                Container(
                  width: 150,
                  child: Text('Make yourself an unforgettable adventure',
                  style: TextStyle(
                    color: Color(0xff949494),
                    fontSize: 10
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                SizedBox(height: 15.0),
                Container(
                  height: 47,
                    width: 51,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/face.jpg')
                        ),
                    ),
                ),
                SizedBox(height: 5),
                Row(
                  children: <Widget>[
                    Icon(Icons.person, size: 17, color: Color(0xff949494)
                    ),
                    Text('Profile', style: TextStyle(
                        color: Color(0xff949494),
                        fontSize: 15
                    ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(150);
}
