import 'package:flutter/material.dart';
import 'package:news_app/layout/main_layout.dart';
import 'package:news_app/models/article.dart';
import 'package:news_app/services/news_api.dart';
import 'package:news_app/widgets/article_card.dart';
import '../common/globals.dart' as globals;
import 'dart:async';
import 'package:intl/intl.dart';
class ArticlesScreen extends StatefulWidget {
  @override
  _ArticlesScreenState createState() => _ArticlesScreenState();
}

class _ArticlesScreenState extends State<ArticlesScreen> {
  NewsApiService newsApiService = NewsApiService();
  Future<ArticleName> atriclename;
  @override
  void initState() {
    atriclename = newsApiService.getArticle();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MainLayout(
      child: FutureBuilder<ArticleName>(
        future: newsApiService.getArticle(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.separated(
                itemBuilder:  (BuildContext context, int index){
                  return ArticleCard(author:snapshot.data.articles[index].author,
                  title:snapshot.data.articles[index].title,
                  description: snapshot.data.articles[index].description,
                  imageUrl: snapshot.data.articles[index].urlToImage,
                  publishAt: snapshot.data.articles[index].publishedAt,
                  );
                },
                separatorBuilder: (BuildContext context, int index) => Divider(),
                itemCount: snapshot.data.articles.length);
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
      );
  }
}
