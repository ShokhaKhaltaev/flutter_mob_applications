import 'package:cooker_social_app/api/mock_fooderlich_service.dart';
import 'package:cooker_social_app/components/components.dart';
import 'package:flutter/material.dart';

class RecipesScreen extends StatelessWidget {
  final exploreService = MockFooderlichService();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: exploreService.getRecipes(),
      builder: (context, snapshot){
        if(snapshot.connectionState == ConnectionState.done){
          return RecipesGridView(recipes: snapshot.data);
        }else{
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
