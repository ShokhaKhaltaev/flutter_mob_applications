import 'package:cooker_social_app/fooderlich_theme.dart';
import 'package:cooker_social_app/models/explore_recipe.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Card3 extends StatelessWidget {
  ExploreRecipe recipe;
  Card3({this.recipe});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            constraints: BoxConstraints.expand(width: 350, height: MediaQuery.of(context).size.height),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/mag2.png'),
                fit: BoxFit.cover
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(16.0),
                  constraints: BoxConstraints.expand(height: MediaQuery.of(context).size.height, width: MediaQuery.of(context).size.width),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Icon(Icons.book,
                        color: Colors.white,
                        size: 40.0,
                      ),
                      SizedBox(height: 8.0),
                      Text('Recipe Trends', style: FooderlichTheme.darkTextTheme.headline2),
                      SizedBox(height: 30.0),
                      Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          spacing: 12,
                          children: <Widget>[
                            CustomChip('Healthy'),
                            CustomChip('Vegan'),
                            CustomChip('Carrots'),
                            CustomChip('Greens'),
                            CustomChip('Wheat'),
                            CustomChip('Mint'),
                            CustomChip('Pescetarian'),
                            CustomChip('Lemongrass')
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}

class CustomChip extends StatelessWidget {
  String text;
  CustomChip(this.text);
  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(text,
          style: FooderlichTheme.darkTextTheme.bodyText1),
      backgroundColor: Colors.black.withOpacity(0.7),
      onDeleted: (){
        print('delete');
      },
    );
  }
}
