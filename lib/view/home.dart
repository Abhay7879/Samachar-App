import 'package:flutter/material.dart';
import 'package:samachar/view/widget/NewsContainer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          controller: PageController(initialPage: 0),
          scrollDirection: Axis.vertical,
          itemCount: 10,
          itemBuilder: (context, index) {
            return NewsContainer(
                imgUrl:
                    "https://bsmedia.business-standard.com/_media/bs/img/article/2022-07/21/full/1658424527-6132.jpg?im=Resize,width=640",
                newsHead:
                    "5G radios in India surpass 100,000 on March 5, Maharashtra leads count",
                newsDes:
                    "Reliance Jio, Bharti Airtel are putting up 5G BTS rapidly across the country. Total installations stood at 84,346 on Feb 16, up from 20,980 on December 20.",
                newsUrl:
                    "https://www.business-standard.com/article/economy-policy/5g-radios-in-india-surpass-100-000-on-march-5-maharashtra-leads-count-123030800734_1.html");
          }),
    );
  }
}
