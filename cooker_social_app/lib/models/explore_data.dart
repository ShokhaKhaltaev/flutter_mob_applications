import 'package:cooker_social_app/models/explore_recipe.dart';
import 'post.dart';

class ExploreData{
  List<ExploreRecipe> todayRecipes;
  List<Post> friendPosts;

  ExploreData({this.todayRecipes, this.friendPosts});
}