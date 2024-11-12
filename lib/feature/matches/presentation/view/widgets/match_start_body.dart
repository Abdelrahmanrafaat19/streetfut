import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/feature/matches/presentation/view/widgets/captain_of_teams_container.dart';
import 'package:fut/feature/matches/presentation/view/widgets/match_titel_column.dart';
import 'package:fut/feature/matches/presentation/view/widgets/team_menu.dart';
import 'package:fut/feature/matches/presentation/view/widgets/team_a_plan_column.dart';
import 'package:fut/feature/matches/presentation/view/widgets/team_b_plan_column.dart';

class MatchStartBody extends StatefulWidget {
  const MatchStartBody({super.key});

  @override
  State<MatchStartBody> createState() => _MatchStartBodyState();
}

class _MatchStartBodyState extends State<MatchStartBody> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      width: double.infinity,
      height: width < 1000 ? height * 0.8 : height * 0.87,
      margin: EdgeInsets.symmetric(horizontal: width * 0.042918),
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
                MatchTitelColumn(),
                TeamBPlanColumn()
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TeamMenu(
                  playerMenus: [
                    "10 Bondok",
                    "6 Mezo",
                    "4 Bob",
                    "2 shata",
                    "1 Haredy"
                  ],
                ),
                CaptainOfTeamsContainer(),
                TeamMenu(
                  playerMenus: [
                    "5 Donga",
                    "6 Soby",
                    "4 Shawki",
                    "2 Tefa",
                    "1 Awad"
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
