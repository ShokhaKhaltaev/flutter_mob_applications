import 'package:flutter/material.dart';
import 'recipe.dart';

class RecipeDetails extends StatefulWidget {
  final Recipes stateRecipe;
  RecipeDetails(this.stateRecipe);
  @override
  _RecipeDetailsState createState() => _RecipeDetailsState(stateRecipe);
}

class _RecipeDetailsState extends State<RecipeDetails> {
  int _sliderVal = 1;
  final Recipes stateRecipe;
  _RecipeDetailsState(this.stateRecipe);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(stateRecipe.label,
        style: TextStyle(
          color: Colors.black,
          )
        ),
        centerTitle: true,
        backgroundColor: Colors.white70,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 15.0),
        width: double.infinity,
        child: Column(
          children: [
            Image(
              image: NetworkImage(stateRecipe.imageUrl),
            ),
            SizedBox(height: 5),
            Text(stateRecipe.label,
            style: TextStyle(
              fontSize: 22.0
              )
            ),
            Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.all(7.0),
                  itemCount: stateRecipe.ingredients.length,
                  itemBuilder: (BuildContext context, int index){
                    final ingredient = stateRecipe.ingredients[index];
                    return Text(
                      '${ingredient.quantity*_sliderVal} ${ingredient.measure} ${ingredient.name}',
                      style: TextStyle(
                        fontSize: 18.0
                      )
                    );
                  },
                ),
            ),
            Slider(
                min: 1,
                max: 10,
                divisions: 10,
                label: '${stateRecipe.servings*_sliderVal} servings',
                value: _sliderVal.toDouble(),
                onChanged: (newValue){
                  setState(() {
                    _sliderVal = newValue.round();
                  });
                },
                activeColor: Colors.green,
                inactiveColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}


