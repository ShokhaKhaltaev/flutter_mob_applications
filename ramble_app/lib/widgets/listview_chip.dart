import 'package:flutter/material.dart';
import 'custom_chip.dart';

class ListChip extends StatefulWidget {
  @override
  _ListChipState createState() => _ListChipState();
}

class _ListChipState extends State<ListChip> {
  int _selectedIndex = 0;
  bool selected = false;
  List<CustomChip> chips = [
    CustomChip(oneIcon: Icons.home, textChip: 'Hotels'),
    CustomChip(oneIcon: Icons.place, textChip: 'Places'),
    CustomChip(oneIcon: Icons.airplanemode_active, textChip: 'Travel'),
  ];

  // void _changeColor(newIndex){
  //   for(int i=0; i < chips.length; i++) {
  //     if(i == newIndex) {
  //       setState(() {
  //         _selectedIndex = newIndex;
  //       });
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: chips.length,
            // children: <Widget>[
            //   CustomChip(onChange: _changeColor,
            //       oneIcon:Icons.home, textChip: 'Hotels'),
            //   CustomChip(onChange: _changeColor,
            //       oneIcon: Icons.place, textChip: 'Places'
            //   ),
            //   CustomChip(onChange: _changeColor,
            //       oneIcon: Icons.airplanemode_active, textChip: 'Travel'
            //   )
            // ],
        itemBuilder: (BuildContext context, int index){
              return chips[index];
        },
      ),
    );
  }
}
