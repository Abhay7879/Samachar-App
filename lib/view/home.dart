import 'package:flutter/material.dart';
import 'package:samachar/controller/fetchNews.dart';
import 'package:samachar/model/newsArt.dart';
import 'package:samachar/view/widget/NewsContainer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, required String title}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isLoading = true;

  late NewsArt newsArt;

  GetNews() async {
    newsArt = await FetchNews.fetchNews();

    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    GetNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          controller: PageController(initialPage: 0),
          scrollDirection: Axis.vertical,
          onPageChanged: (value) {
            setState(() {
              isLoading = true;
            });
            GetNews();
          },
          itemBuilder: (context, index) {
            return isLoading
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : NewsContainer(
                    imgUrl: newsArt.imgUrl,
                    newsCnt: newsArt.newsCnt,
                    newsHead: newsArt.newsHead,
                    newsDes: newsArt.newsDes,
                    newsUrl: newsArt.newsUrl);
          }),
    );
  }
}
