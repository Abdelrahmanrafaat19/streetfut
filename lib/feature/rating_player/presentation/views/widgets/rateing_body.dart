import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/component/default_button.dart';
import 'package:fut/core/responsive_font.dart';
import 'package:fut/core/theme/colors.dart';
import 'package:fut/feature/rating_player/presentation/views/widgets/match_result.dart';
import 'package:fut/feature/rating_player/presentation/views/widgets/player_pointes.dart';
import 'package:fut/feature/rating_player/presentation/views/widgets/players_of_team_item.dart';
import 'package:fut/feature/rating_player/presentation/views/widgets/referee_rating_row.dart';

class RateingBody extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  RateingBody({super.key});

  @override
  State<RateingBody> createState() => _RateingBodyState();
}

class _RateingBodyState extends State<RateingBody> {
  List playersName = [
    "Ahmed El Tayar",
    "Ibrahim Ahmed",
    "Mohamed mostafa",
    "mostafa shawki"
  ];

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      width: double.infinity,
      height: width < 1000 ? height * 0.85 : height * 0.87,
      margin: EdgeInsets.symmetric(horizontal: width * 0.042918),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [MatchResult(), PlayerPointes()],
            ),
            SizedBox(
              height: width < 1000 ? width * 0.032790 : 27,
            ),
            SizedBox(
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: playersName.length,
                itemBuilder: (context, index) {
                  return PlayersOfTeamItem(
                    playerName: playersName[index],
                  );
                },
              ),
            ),
            SizedBox(
              height: width < 1000 ? width * 0.032790 : 27,
            ),
            const RefereeRatingRow(),
            SizedBox(
              height: width < 1000 ? width * 0.032790 : 27,
            ),
            SizedBox(
              width: width * 0.195278,
              height: height * 0.095348,
              child: defaultButton(
                  onTap: () {},
                  text: "Done",
                  gradient: const LinearGradient(colors: [
                    Color(0xff9A8E14),
                    Color(0xff95A324),
                    Color(0xff90B834)
                  ]),
                  color: SharedColors.greenColor,
                  fontFamily: "poppin",
                  textcolor: SharedColors.whiteColor,
                  fontSize: getResponsiveFont(context, fontSize: 25),
                  raduis: 10.r),
            ),
            SizedBox(
              height: width < 1000 ? width * 0.032790 : 27,
            ),
          ],
        ),
      ),
    );
  }
}
