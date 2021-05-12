import 'package:flutter/material.dart';
import 'recipe.dart';
import 'recipe_details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Recipe(),
    );
  }
}

class Recipe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SafeArea(
        child: Container(
          child: ListView.builder(
            itemCount: Recipes.recipes.length,
            itemBuilder: (BuildContext context, int index){
                return GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context, MaterialPageRoute(
                        builder: (context){
                          return RecipeDetails(Recipes.recipes[index]);
                        }
                      ),
                    );
                  },
                  child: RecipeCard(Recipes.recipes[index])
                );
            },
          ),
        )
      ),
    );
  }
}

Widget RecipeCard(Recipes recipeCustom){ // custom card for recipes
  return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(1.0),
            spreadRadius: 0.5,
            blurRadius: 7,
            offset: Offset(0, 3)
          )
        ]
      ),
      child: Column(
        children: [
            Image(
                image: NetworkImage(recipeCustom.imageUrl),
            ),
          SizedBox(height: 8.0),
          Text(recipeCustom.label,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              letterSpacing: 1.5,
              fontWeight: FontWeight.bold
            ),
          ),
        ],
      )
  );
}

class CustomAppBar extends StatelessWidget implements PreferredSize { // custom AppBar
  final preferredHeight = 80.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: preferredHeight,
      padding: EdgeInsets.fromLTRB(7.0, 20.0, 7.0, 0.0),
      decoration: BoxDecoration(
          color: Colors.white70,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(1.0),
                spreadRadius: 0.5,
                //blurRadius: 2,
                //offset: Offset(0, 3)
            )
          ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(Icons.arrow_back_ios_outlined,
          color: Colors.black),
          Center(
            child: Text('Recipes',
                style: TextStyle(
                    fontSize: 18.0,
                    letterSpacing: 1.5,
                    color: Colors.black
                )
            ),
          ),
          Icon(Icons.search,
              color: Colors.black)
        ],
      ),
    );
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => Size.fromHeight(preferredHeight);
}