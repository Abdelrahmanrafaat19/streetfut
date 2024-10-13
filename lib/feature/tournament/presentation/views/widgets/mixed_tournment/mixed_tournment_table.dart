import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fut/core/src/flutter_tournament_bracket.dart';
import 'package:fut/core/src/model/tournament_match.dart';
import 'package:fut/core/src/model/tournament_model.dart';
import 'package:fut/core/theme/colors.dart';

final List<Tournament> _tournaments = [
  Tournament(matches: [
    TournamentMatch(
      id: "2",
      teamA: "Borussia Dortmund",
      teamB: "assetes/images/team a.png",
      scoreTeamA: "2",
      scoreTeamB: "1",
    ),
    TournamentMatch(
      id: "2",
      teamA: "Borussia Dortmund",
      teamB: "assetes/images/team football club.png",
      scoreTeamA: "2",
      scoreTeamB: "1",
    ),
    TournamentMatch(
      id: "2",
      teamA: "Borussia Dortmund",
      teamB: "assetes/images/team a.png",
      scoreTeamA: "2",
      scoreTeamB: "1",
    ),
    TournamentMatch(
      id: "2",
      teamA: "Borussia Dortmund",
      teamB: "assetes/images/team football club.png",
      scoreTeamA: "2",
      scoreTeamB: "1",
    ),
  ]),
  Tournament(matches: [
    TournamentMatch(
      id: "2",
      teamA: "Borussia Dortmund",
      teamB: "assetes/images/team a.png",
      scoreTeamA: "2",
      scoreTeamB: "1",
    ),
    TournamentMatch(
      id: "2",
      teamA: "Borussia Dortmund",
      teamB: "assetes/images/team football club.png",
      scoreTeamA: "2",
      scoreTeamB: "1",
    ),
  ]),
  Tournament(matches: [
    TournamentMatch(
      id: "2",
      teamA: "Borussia Dortmund",
      teamB: "assetes/images/at.png",
      scoreTeamA: "2",
      scoreTeamB: "1",
    ),
  ])
];

class MixedTournmentTable extends StatefulWidget {
  const MixedTournmentTable({super.key});

  @override
  State<MixedTournmentTable> createState() => _MixedTournmentTableState();
}

class _MixedTournmentTableState extends State<MixedTournmentTable> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: double.infinity,
      height: width < 1000 ? height * 0.7 : height * 0.73,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: width > 1000 ? height * 0.03982 : 0.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TournamentBracket(
                  itemsMarginVertical: 10,
                  cardWidth: width * 0.10656,
                  cardHeight: height * 0.106279,
                  dirction: "left",
                  list: _tournaments,
                  card: (item) {
                    return customMatchCard(item, context);
                  },
                ),
                SizedBox(
                  width: width * 0.07832,
                ),
                TournamentBracket(
                  itemsMarginVertical: 10,
                  cardWidth: width * 0.10656,
                  cardHeight: height * 0.106279,
                  dirction: "ri",
                  list: _tournaments,
                  card: (item) {
                    return customMatchCard(item, context);
                  },
                ),
              ],
            ),
            Container(
              width: width * 0.24678,
              height: height * 0.211628,
              decoration: BoxDecoration(
                color: const Color(0xff3D3F41),
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: width * 0.24678,
                    height: height * 0.08372,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xff9A8E14),
                          Color(0xff95A324),
                          Color(0xff90B834),
                        ],
                      ),
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20.r),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          "assetes/svg/champ.svg",
                          color: SharedColors.whiteColor,
                          width: width * 0.024678,
                          height: height * 0.053488,
                        ),
                        Text(
                          "Champions",
                          style: TextStyle(
                              color: SharedColors.whiteColor,
                              fontFamily: "poppin",
                              fontWeight: FontWeight.bold,
                              fontSize: width * 0.019313),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: const AssetImage(
                          "assetes/images/team football club.png",
                        ),
                        width: width * 0.0501888,
                        height: height * 0.090023,
                      ),
                      Text(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        "Elahlawya",
                        style: TextStyle(
                          fontSize:
                              MediaQuery.of(context).size.width * 0.020605,
                          color: SharedColors.whiteColor,
                          fontFamily: "poppin",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Container customMatchCard(TournamentMatch? item, BuildContext context) {
  return Container(
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
        color: const Color(0xff363535),
        borderRadius: BorderRadius.circular(12)),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(child: Image(image: AssetImage(item!.teamB!))),
        Text(
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          "Elahlawya",
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.width * 0.01072,
            color: SharedColors.whiteColor,
            fontFamily: "poppin",
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    ),
  );
}
