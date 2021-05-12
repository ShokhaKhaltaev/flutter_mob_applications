import 'package:flutter/material.dart';
import '../models/models.dart';
import 'components.dart';

class FriendPostListView extends StatelessWidget {
  final List<Post> friendPost;

  const FriendPostListView({Key key, this.friendPost}) : super(key:key);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Social Chefs",
          style: Theme.of(context).textTheme.headline1
          ),
          SizedBox(height: 16.0),
          ListView.separated(
            primary: false,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index){
                var post = friendPost[index];
                return FriendPostTile(post: post);
              },
              separatorBuilder: (context, index){
                return SizedBox(height: 16.0);
              },
              itemCount: friendPost.length),
          SizedBox(height: 16.0),
        ],
      ),
    );
  }
}
