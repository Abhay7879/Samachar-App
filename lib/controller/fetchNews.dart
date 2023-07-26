import 'dart:convert';
import 'dart:math';

import 'package:http/http.dart';
import 'package:samachar/model/newsArt.dart';

class FetchNews {
  static List sourcesId = [
    "abc-news",
    "bbc-news",
    "bbc-sport",
    "business-insider",
    "engadget",
    "entertainment-weekly",
    "espn",
    "espn-cric-info",
    "financial-post",
    "fox-news",
    "fox-sports",
    "globo",
    "google-news",
    "google-news-in",
    "medical-news-today",
    "national-geographic",
    "news24",
    "new-scientist",
    "new-york-magazine",
    "next-big-future",
    "techcrunch",
    "techradar",
    "the-hindu",
    "the-wall-street-journal",
    "the-washington-times",
    "time",
    "usa-today",
  ];

  static Future<NewsArt> fetchNews() async {
    final _random = new Random();
    var sourceId = sourcesId[_random.nextInt(sourcesId.length)];
    print(sourceId);

    Response response = await get(Uri.parse(
        "https://newsapi.org/v2/top-headlines?sources=$sourceId&apiKey=44d7a8f720ce4a0b8d077ef312649c76"));

    Map body_data = jsonDecode(response.body);
    List articles = body_data["articles"];
    //print(articles);

    final _newrandom = new Random();
    var myArticle = articles[_newrandom.nextInt(articles.length)];
    print(myArticle);

    return NewsArt.fromAPItoApp(myArticle);
  }
}
