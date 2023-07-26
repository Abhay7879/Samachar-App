class NewsArt {
  String imgUrl;
  String newsHead;
  String newsDes;
  String newsCnt;
  String newsUrl;

  NewsArt({
    required this.imgUrl,
    required this.newsHead,
    required this.newsDes,
    required this.newsCnt,
    required this.newsUrl,
  });

  static NewsArt fromAPItoApp(Map<String, dynamic> article) {
    return NewsArt(
      imgUrl: article["urlToImage"] ??
          "https://media.gettyimages.com/id/1311148884/vector/abstract-globe-background.jpg?s=612x612&w=gi&k=20&c=G5uPfn2VTF3aXCr76pn1T7oWE-aHVQ0rAYMl_MK2OvM=",
      newsHead: article["title"] ?? "__",
      newsDes: article["description"] ?? "__",
      newsCnt: article["content"] ?? "__",
      newsUrl: article["url"] ??
          "https://www.google.com/webhp?hl=en&sa=X&ved=0ahUKEwiOo46v4dT9AhUq8DgGHTfVBEEQPAgI",
    );
  }
}
