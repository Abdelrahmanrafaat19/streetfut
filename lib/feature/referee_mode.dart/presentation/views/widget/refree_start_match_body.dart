import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fut/core/component/custam_drop_down_field.dart';
import 'package:fut/core/theme/colors.dart';
import 'package:fut/feature/referee_mode.dart/presentation/views/widget/end_match_button.dart';
import 'package:fut/feature/referee_mode.dart/presentation/views/widget/end_match_dialog.dart';
import 'package:fut/feature/referee_mode.dart/presentation/views/widget/match_result_and_match_result.dart';
import 'package:fut/feature/referee_mode.dart/presentation/views/widget/start_math_button.dart';
import 'package:fut/feature/referee_mode.dart/presentation/views/widget/teams_drop_down_refree_start_match.dart';

class RefreeStartMatchBody extends StatefulWidget {
  const RefreeStartMatchBody({super.key});

  @override
  State<RefreeStartMatchBody> createState() => _RefreeStartMatchBodyState();
}

class _RefreeStartMatchBodyState extends State<RefreeStartMatchBody> {
  bool toggelMatch = false;
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
      height: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 15.h,
            ),
            StartMathButton(
              onTap: () {
                setState(() {
                  toggelMatch = !toggelMatch;
                });
              },
              toggelMatch: toggelMatch,
            ),
            SizedBox(
              height: width < 1000
                  ? height * 0.0302325
                  : (height * 0.0302325) * 0.3,
            ),
            const MatchResultAndMatchResult(),
            SizedBox(
              height: width < 1000
                  ? height * 0.0302325
                  : (height * 0.0302325) * 0.3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(
                      "assetes/svg/yellowcart.svg",
                      width: width * 0.030386,
                      height: height * 0.065813,
                    ),
                    Text(
                      "Yellow Card",
                      style: TextStyle(
                          fontFamily: "poppin",
                          fontSize: width < 1000
                              ? width * 0.0193133
                              : (width * 0.0193133) * 0.75,
                          color: SharedColors.whiteColor,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const TeamsDropDownRefreeStartMatch(
                      dataTeamA: ["58", "10"],
                      dataTeamB: ["20", "35"],
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(
                      "assetes/svg/redcard.svg",
                      width: width * 0.030386,
                      height: height * 0.065813,
                    ),
                    Text(
                      "Red Card",
                      style: TextStyle(
                          fontFamily: "poppin",
                          fontSize: width < 1000
                              ? width * 0.0193133
                              : (width * 0.0193133) * 0.75,
                          color: SharedColors.whiteColor,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const TeamsDropDownRefreeStartMatch(
                      dataTeamA: ["58", "10"],
                      dataTeamB: ["20", "35"],
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(
                      "assetes/svg/football.svg",
                      width: width * 0.030386,
                      height: height * 0.065813,
                    ),
                    Text(
                      "Goal",
                      style: TextStyle(
                          fontFamily: "poppin",
                          fontSize: width < 1000
                              ? width * 0.0193133
                              : (width * 0.0193133) * 0.75,
                          color: SharedColors.whiteColor,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const TeamsDropDownRefreeStartMatch(
                      dataTeamA: ["58", "10"],
                      dataTeamB: ["20", "35"],
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      "assetes/svg/penalty.svg",
                      width: width * 0.030386,
                      height: height * 0.065813,
                    ),
                    Text(
                      "Penalty",
                      style: TextStyle(
                          fontFamily: "poppin",
                          fontSize: width < 1000
                              ? width * 0.0193133
                              : (width * 0.0193133) * 0.75,
                          color: SharedColors.whiteColor,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    CustamDropDwonField(
                      text: "Team",
                      data: const ["Team A", "Team B"],
                      width: width * 0.10193,
                      height: height * 0.069767,
                      backGroundColor: SharedColors.whiteColor,
                      textColor: SharedColors.blackColor,
                      iconSize: width < 1000
                          ? width * 0.012875 * 2
                          : (width * 0.012875 * 2) * 0.8,
                      fontSize: width * 0.012875,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: width < 1000
                  ? height * 0.0602325
                  : (height * 0.0602325) * 0.3,
            ),
            EndMatchButton(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => const EndMatchDialog(),
                );
              },
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xff696969), width: 1),
              ),
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


/* 
Container(
                    height: 30.h,
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: const Color(0xff696969), width: 2),
                    ),
                  ), */