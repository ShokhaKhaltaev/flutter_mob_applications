class Ingredient{
  String imageUrl;
  String title;
  String source;

  Ingredient({this.imageUrl, this.title, this.source});
  Ingredient.fromJson(Map<String, dynamic> json){
    imageUrl = json['imageUrl'];
    title = json['title'];
    source = json['source'];
  }
}