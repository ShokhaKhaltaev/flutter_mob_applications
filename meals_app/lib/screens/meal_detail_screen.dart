import 'package:flutter/material.dart';
import '../dummy_data.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = '/meal-detail';

  Widget buildSelection(BuildContext context, String text){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Text(text, style: Theme.of(context).textTheme.title),
    );
  }

  Widget buildSelectionTitle(BuildContext context, child){
    return Container(
        decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10.0),
    ),
    margin: EdgeInsets.all(10.0),
    padding: EdgeInsets.all(10.0),
    height: MediaQuery.of(context).size.height * 0.2,
    width: MediaQuery.of(context).size.width * 0.9,
    child: child,
    );
  }


  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedMeal.title),
        centerTitle: true,
      ),
        body: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: double.infinity,
              child: Image.network(selectedMeal.imageUrl, fit: BoxFit.cover),
            ),
            buildSelection(context, 'Ingredients'),
             buildSelectionTitle(context, ListView.builder(
                  itemCount: selectedMeal.ingredients.length,
                  itemBuilder: (context, index){
                    return Card(color: Theme.of(context).accentColor,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                      child: Text(selectedMeal.ingredients[index]),
                    ),
                    );
                  }
                ),
             ),
            buildSelection(context, 'Steps'),
            buildSelectionTitle(context, ListView.builder(
                    itemCount: selectedMeal.steps.length,
                    itemBuilder: (context, index){
                      return Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(child: Text('# ${index + 1}')),
                            title: Text(selectedMeal.steps[index]),
                          ),
                          Divider(),
                        ],
                      );
                    }
                ),
            ),
          ],
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).pop(mealId);
        },
        child: Icon(Icons.delete),
      ),
    );
  }
}
