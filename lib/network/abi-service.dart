import 'package:dio/dio.dart';

import '../model/articles.dart';

class Api {

  Dio dio = Dio();

  Future<List<Articles>> getnews(
      String value
      ) async {
    Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&category=$value&apiKey=c33eb00f2a9f413f8a89befce038a012');

    Map<String,dynamic> json = response.data;
   List<Articles> arictles = [];
   for (var item in json ['articles']){
     arictles.add(
       Articles(title:item['title'], description: item['description'], urlToImage:item['urlToImage'] , url: item['url'])
     );
   }
   return arictles;
    
  }



}




