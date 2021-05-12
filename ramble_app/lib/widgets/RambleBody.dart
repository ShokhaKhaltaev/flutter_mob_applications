import 'dart:math';
import 'package:flutter/material.dart';
import 'package:ramble_app/widgets/custom_chip.dart';
import 'package:ramble_app/widgets/listview_chip.dart';
import 'search_widget.dart';
import 'travel_card.dart';
import '../model/travel.dart';
class RambleBody extends StatelessWidget {
   Widget customPlane = Transform.rotate(
    angle: 40 * pi / 180,
    child: Icon(
        Icons.airplanemode_active,
        color: Colors.grey,
        size: 27
    ),
  );
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(height: 10.0),
          Search(),
          SizedBox(height: 15),
          Container(
            height: 40,
            child: ListChip(),
          ),
          SizedBox(height: 14.0),
          Container(
            margin: EdgeInsets.symmetric(horizontal:15.0),
            child: GridView.builder(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: Travel.travelCardList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                    childAspectRatio: 0.55,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 10),
                itemBuilder:(context, index){
                  var travelNewCard = Travel.travelCardList[index];
                  return TravelCard(travel: travelNewCard);
                }
            ),
          )
        ],
      ),
    );
  }
}
