import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../models/article.dart';
import '../common/globals.dart' as globals;

Dio dio = Dio(globals.dioBaseOptions);
class NewsApiService{
  Future<ArticleName> getArticle() async{
    try{
      final Response response = await dio.get('everything?q=Apple&from=2021-05-12&sortBy=popularity&apiKey=9c273222e2204bafbf1432de673f410f');
      print(response.data);
      ArticleName articleName = ArticleName.fromJson(response.data);
      return articleName;
    }catch(e){
      print(e.toString());
      throw Exception(e.toString());
    }
  }
}