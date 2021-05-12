import 'package:cooker_social_app/fooderlich_theme.dart';
import 'package:flutter/material.dart';
import 'package:cooker_social_app/models/explore_recipe.dart';

class Card1 extends StatelessWidget {

  final ExploreRecipe recipe;
  final String category = "Editor's choice";
  final String title = "The Art of Dough";
  final String description = "Learn to make the perfect bread";
  final String chef = "Ray Wenderlich";
  Card1({this.recipe});
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Container(
            child: Stack(
              children: <Widget>[
                Text(category, style: FooderlichTheme.darkTextTheme.bodyText1),
                Positioned(
                    child: Text(title, style: FooderlichTheme.darkTextTheme.headline5),
                  top: 20.0,
                ),
                Positioned(
                    child: Text(description, style: FooderlichTheme.darkTextTheme.bodyText1),
                  bottom: 30.0,
                  right: 0,
                ),
                Positioned(
                    child: Text(chef, style: FooderlichTheme.darkTextTheme.bodyText1),
                  bottom: 10.0,
                  right: 0,
                )
              ],
            ),
            padding: EdgeInsets.all(16.0),
            constraints: BoxConstraints.expand(width: 350, height: MediaQuery.of(context).size.height),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/mag1.png'
                ),
                fit: BoxFit.cover
              ),
              borderRadius: BorderRadius.circular(10.0)
            ),
          ),
        )
    );
  }
}
