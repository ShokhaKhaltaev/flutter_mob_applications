import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meals_app/screens/meal_detail_screen.dart';
import '../models/meal.dart';

class MealItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final Function removeItem;
  MealItem({@required this.id, @required this.title,@required this.affordability,@required this.complexity,@required this.duration,@required this.imageUrl, @required this.removeItem});

  String get complexityText{
    switch(complexity){
      case Complexity.Simple:
        return 'String';
        break;
      case Complexity.Challenging:
        return 'Challenging';
        break;
      case Complexity.Hard:
        return 'Hard';
        break;
      default:
        return 'Unknown';
        break;
    }
  }

  String get affordableText{
    switch(affordability){
      case Affordability.Affordable:
        return 'Affordable';
        break;
      case Affordability.Luxurious:
        return 'Luxurious';
        break;
      case Affordability.Pricey:
        return 'Pricey';
        break;
      default:
        return 'Unknown';
        break;
    }
  }

  void selectMeal(BuildContext context){
    Navigator.of(context).pushNamed(MealDetailScreen.routeName,
        arguments: id
    ).then((result) {
      if(result != null){
        removeItem(result);
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectMeal(context),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0),),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight:Radius.circular(15.0)),
                  child: Image.network(imageUrl, height: 250,width: double.infinity, fit: BoxFit.cover),
                ),
                Positioned(
                  bottom: 20.0,
                  right: 10.0,

                  child: Container(
                    width: 300,
                    color: Colors.black54,
                    padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                    child: Text(title, style: TextStyle(fontSize: 26, color: Colors.white),
                    softWrap: true,
                    overflow: TextOverflow.fade),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: <Widget>[
                      Icon(Icons.schedule),
                      SizedBox(width: 6.0),
                      Text('$duration min')
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.work),
                      SizedBox(width: 6.0),
                      //Text(complexityText)
                      Text('Simple')
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.money),
                      SizedBox(width: 6.0),
                      //Text(complexityText)
                      Text('Affordable')
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
