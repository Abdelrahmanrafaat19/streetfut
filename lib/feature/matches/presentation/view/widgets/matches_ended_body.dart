import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fut/core/theme/colors.dart';
import 'package:fut/feature/matches/presentation/view/widgets/matches_result_column.dart';
import 'package:fut/feature/matches/presentation/view/widgets/team_a_plan_column.dart';
import 'package:fut/feature/matches/presentation/view/widgets/team_b_plan_column.dart';

class MatchesEndedBody extends StatefulWidget {
  const MatchesEndedBody({super.key});

  @override
  State<MatchesEndedBody> createState() => _MatchesEndedBodyState();
}

class _MatchesEndedBodyState extends State<MatchesEndedBody> {
  List<Map> footballDetails = [
    {
      "playerName": "2  Saad Hassouna",
      "teamName": "Team A",
      "type": "Goal",
      "time": "8",
      "image": "assetes/svg/football.svg"
    },
    {
      "playerName": "11  Mahmoud Omar",
      "teamName": "Team B",
      "type": "Goal",
      "time": "10",
      "image": "assetes/svg/football.svg"
    },
    {
      "playerName": "2  Ramy Mohamed",
      "teamName": "Team B",
      "type": "yellow Card",
      "time": "13",
      "image": "assetes/svg/yellowcart.svg"
    },
    {
      "playerName": "9  Marwan Mohsen",
      "teamName": "Team A",
      "type": "Penalty",
      "time": "15",
      "image": "assetes/svg/penalty.svg"
    },
    {
      "playerName": "5 Youssef Bakr",
      "teamName": "Team B",
      "type": "red Card",
      "time": "20",
      "image": "assetes/svg/redcard.svg"
    },
  ];
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: double.infinity,
      height: width < 1000 ? height * 0.8 : height * 0.87,
      // margin: EdgeInsets.symmetric(horizontal: width * 0.042918),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10.h,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TeamAPlanColumn(),
                MatchesResultColumn(),
                TeamBPlanColumn()
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Match Highlights",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: SharedColors.whiteColor,
                fontFamily: "poppin",
                fontSize: width < 1000
                    ? width * 0.027897
                    : (width * 0.027897) * (2 / 3),
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Column(
              children: [
                for (int i = 0; i < footballDetails.length; i++)
                  footballDetails[i]["teamName"] == "Team A"
                      ? Container(
                          height: width < 1000
                              ? height * 0.197674
                              : (height * 0.197674) * 0.7,
                          margin: EdgeInsets.zero,
                          padding: EdgeInsets.zero,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: width < 1000
                                    ? height * 0.197674
                                    : (height * 0.197674) * 0.7,
                                width: width * 0.4487124,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      footballDetails[i]["teamName"] == "Team A"
                                          ? footballDetails[i]["playerName"]
                                          : "",
                                      style: TextStyle(
                                          fontFamily: "poppin",
                                          fontSize: width < 1000
                                              ? width * 0.021459
                                              : (width * 0.021459) * 0.75,
                                          color: SharedColors.whiteColor,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      width: 10.h,
                                    ),
                                    footballDetails[i]["teamName"] == "Team A"
                                        ? SvgPicture.asset(
                                            footballDetails[i]["image"],
                                            width: width * 0.030386,
                                            height: height * 0.065813,
                                          )
                                        : SizedBox(
                                            width: width * 0.030386,
                                            height: height * 0.065813,
                                          ),
                                    SizedBox(
                                      width: 25.h,
                                    ),
                                    Text(
                                      footballDetails[i]["teamName"] == "Team A"
                                          ? "\"${footballDetails[i]["time"]}  "
                                          : "",
                                      style: TextStyle(
                                          fontFamily: "poppin",
                                          fontSize: width < 1000
                                              ? width * 0.021459
                                              : (width * 0.021459) * 0.75,
                                          color: SharedColors.whiteColor,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: width < 1000
                                    ? height * 0.197674
                                    : (height * 0.197674) * 0.7,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0xff696969), width: 1),
                                ),
                              ),
                              SizedBox(
                                width: width * 0.4487124,
                                height: width < 1000
                                    ? height * 0.197674
                                    : (height * 0.197674) * 0.7,
                              ),
                            ],
                          ),
                        )
                      : Container(
                          height: width < 1000
                              ? height * 0.197674
                              : (height * 0.197674) * 0.7,
                          margin: EdgeInsets.zero,
                          padding: EdgeInsets.zero,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: width * 0.4487124,
                                height: width < 1000
                                    ? height * 0.197674
                                    : (height * 0.197674) * 0.7,
                              ),
                              Container(
                                height: width < 1000
                                    ? height * 0.197674
                                    : (height * 0.197674) * 0.7,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0xff696969), width: 1),
                                ),
                              ),
                              SizedBox(
                                width: width * 0.4487124,
                                height: width < 1000
                                    ? height * 0.197674
                                    : (height * 0.197674) * 0.7,
                                child: Row(
                                  children: [
                                    Text(
                                      footballDetails[i]["teamName"] == "Team B"
                                          ? "  ${footballDetails[i]["time"]}\""
                                          : "",
                                      style: TextStyle(
                                          fontFamily: "poppin",
                                          fontSize: width < 1000
                                              ? width * 0.021459
                                              : (width * 0.021459) * 0.75,
                                          color: SharedColors.whiteColor,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      width: 25.h,
                                    ),
                                    footballDetails[i]["teamName"] == "Team B"
                                        ? SvgPicture.asset(
                                            footballDetails[i]["image"],
                                            width: width * 0.030386,
                                            height: height * 0.065813,
                                          )
                                        : SizedBox(
                                            width: width * 0.030386,
                                            height: height * 0.065813,
                                          ),
                                    SizedBox(
                                      width: 10.h,
                                    ),
                                    Text(
                                      footballDetails[i]["teamName"] == "Team B"
                                          ? footballDetails[i]["playerName"]
                                          : "",
                                      style: TextStyle(
                                          fontFamily: "poppin",
                                          fontSize: width < 1000
                                              ? width * 0.021459
                                              : (width * 0.021459) * 0.75,
                                          color: SharedColors.whiteColor,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
              ],
            )
          ],
        ),
      ),
    );
  }
}
