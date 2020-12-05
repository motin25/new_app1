import 'package:flutter_app/models/article_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class News {

  List<ArticleModel> news  = [];

  Future<void> getNews() async {
    String url = "http://newsapi.org/v2/top-headlines?country=in&category=business&apiKey=0b7794cd73af4716b752335466f7b1f7";

    var response = await http.get(url);

    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == "ok") {
      jsonData["articles"].forEach((element) {
        if (element['urlToImage'] != null && element['description'] != null) {
          ArticleModel article = ArticleModel(
            title: element['title'],
            author: element['author'],
            description: element['description'],
            urlToImage: element['urlToImage'],
            publshedAt: DateTime.parse(element['publishedAt']),
            content: element["content"],
            articleUrl: element["url"],
          );
          news.add(article);
        }
      });
    }
  }


}
