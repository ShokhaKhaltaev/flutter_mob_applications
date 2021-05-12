import 'package:cooker_social_app/fooderlich_theme.dart';
import 'package:cooker_social_app/models/explore_recipe.dart';
import 'package:flutter/material.dart';
import 'author_card.dart';

class Card2 extends StatelessWidget {
  ExploreRecipe recipe;
  Card2({this.recipe});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            padding: EdgeInsets.all(16.0),
            constraints: BoxConstraints.expand(height: MediaQuery.of(context).size.height, width: 350),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/mag5.png'),
                fit: BoxFit.cover
              ),
              borderRadius: BorderRadius.circular(10.0)
            ),
            child: Column(
              children: <Widget>[
                AuthorCard(authorName: 'Mike Katz', title: 'Smoothie Connoisseur', imageProvider: AssetImage('assets/mag4.png')),
                Expanded(
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                            child: Text('Recipe', style: FooderlichTheme.lightTextTheme.headline1),
                          bottom: 16,
                          right: 16,
                        ),
                        Positioned(
                            child: RotatedBox(
                              quarterTurns: 3,
                                child: Text('Smoothies', style: FooderlichTheme.lightTextTheme.headline1)
                            ),
                          bottom: 70,
                          left: 16,
                        )
                      ],
                    ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
