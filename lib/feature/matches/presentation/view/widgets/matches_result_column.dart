import 'package:flutter/material.dart';
import 'package:fut/core/theme/colors.dart';
import 'package:fut/feature/matches/presentation/view/widgets/man_of_match_container.dart';
import 'package:fut/feature/rating_player/presentation/views/rating_player.dart';

class MatchesResultColumn extends StatelessWidget {
  const MatchesResultColumn({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(
          "assetes/logo/logofut.png",
          height: height * 0.141860,
          width: width * 0.04828,
        ),
        Text(
          "Match Result",
          style: TextStyle(
            color: SharedColors.whiteColor,
            fontFamily: "poppin",
            fontSize: width < 1000
                ? width * 0.0354077
                : (width * 0.0354077) * (2 / 3),
            fontWeight: FontWeight.w600,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "4",
              style: TextStyle(
                fontFamily: "poppin",
                fontWeight: FontWeight.w600,
                fontSize: width * 0.035407,
                color: SharedColors.whiteColor,
              ),
            ),
            SizedBox(
              width: width < 100 ? width * 0.14186 : 20,
            ),
            Text(
              "-",
              style: TextStyle(
                fontFamily: "poppin",
                fontWeight: FontWeight.w600,
                fontSize: width * 0.035407,
                color: SharedColors.midGreenColor,
              ),
            ),
            SizedBox(
              width: width < 100 ? width * 0.14186 : 20,
            ),
            Text(
              "2",
              style: TextStyle(
                fontFamily: "poppin",
                fontWeight: FontWeight.w600,
                fontSize: width * 0.035407,
                color: SharedColors.whiteColor,
              ),
            ),
          ],
        ),
        GestureDetector(
          child: const ManOfMatchContainer(),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const RatingPlayer(),
            ));
          },
        )
      ],
    );
  }
}
