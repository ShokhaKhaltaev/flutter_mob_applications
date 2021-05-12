import 'package:flutter/material.dart';
import '../api/mock_fooderlich_service.dart';
import '../components/components.dart';

class ExploreScreen extends StatefulWidget {

  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  final mockService = MockFooderlichService();
  ScrollController _scrollController;
  @override
  void initState(){
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  void _scrollListener(){
    if(_scrollController.offset >= _scrollController.position.maxScrollExtent &&
    !_scrollController.position.outOfRange){
      print('I am at the bottom!');
    }
    if(_scrollController.offset <= _scrollController.position.minScrollExtent &&
        !_scrollController.position.outOfRange){
      print('I am at the top!');
    }
  }

  Widget build(BuildContext context) {
    return FutureBuilder(
      future: mockService.getExploreData(),
      builder: (context, snapshot){
        if(snapshot.connectionState == ConnectionState.done){
          return Scaffold(
            body: ListView(
              controller: _scrollController,
              scrollDirection: Axis.vertical,
              children: [
                TodayRecipeListView(recipes: snapshot.data.todayRecipes),
                SizedBox(height: 16.0),
                FriendPostListView(friendPost: snapshot.data.friendPosts),
              ],
            ),
          );
        } else{
            return Center(
              child: CircularProgressIndicator(),
            );
        }
      }
    );
  }
}
