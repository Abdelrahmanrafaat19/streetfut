import 'package:flutter/material.dart';
import 'package:fut/feature/home/presentation/views/widgets/matches_and_social_row.dart';
import 'package:fut/feature/home/presentation/views/widgets/news_teams_row.dart';
import 'package:fut/feature/home/presentation/views/widgets/offer_screens_row.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  List<String> imgList = [
    'https://via.placeholder.com/600x400.png?text=Image1',
    'https://via.placeholder.com/600x400.png?text=Image2',
    'https://via.placeholder.com/600x400.png?text=Image4',
  ];

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(
        left: width * 0.02399,
        right: width * 0.02399,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const OfferScreensRow(),
            SizedBox(
              height:
                  width < 950 ? height * 0.03488 : (height * 0.03488) * (2 / 3),
            ),
            const MatchesAndSocialRow(),
            SizedBox(
              height:
                  width < 950 ? height * 0.03488 : (height * 0.03488) * (2 / 3),
            ),
            const NewsTeamsRow(),
            SizedBox(
              height:
                  width < 950 ? height * 0.03488 : (height * 0.03488) * (2 / 3),
            ),
          ],
        ),
      ),
    );
  }
}
