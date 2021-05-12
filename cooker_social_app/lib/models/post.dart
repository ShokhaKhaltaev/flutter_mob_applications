class Post{
  String profileImageUrl;
  String comment;
  String foodPictureUrl;
  String timeStamp;

  Post({this.profileImageUrl, this.comment, this.foodPictureUrl, this.timeStamp});
  Post.fromJson(Map <String, dynamic> json){
    profileImageUrl = json['profileImageUrl'];
    comment = json['comment'];
    foodPictureUrl = json['foodPictureUrl'];
    timeStamp = json['timeStamp'];
  }
}