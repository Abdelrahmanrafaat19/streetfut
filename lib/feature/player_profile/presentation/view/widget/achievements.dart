import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/component/columns_team_info_team_profile.dart';
import 'package:fut/core/component/titel_container.dart';
import 'package:fut/core/theme/colors.dart';

class AchievementsPlayer extends StatelessWidget {
  const AchievementsPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      width: width < 1000 ? width * 0.643776 : width * 0.543776,
      // height: width < 1000 ? height * 0.362791 : (height * 0.362791) * (2 / 3),
      decoration: BoxDecoration(
          color: SharedColors.blackColor.withOpacity(0.7),
          borderRadius: BorderRadius.circular(20.r)),
      child: Column(
        children: [
          TitelContainer(
            title: "Achievements",
            width: width < 1000 ? width * 0.643776 : width * 0.543776,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const ColumnsTeamInfoTeamProfile(
                    title: "2",
                    path: "assetes/svg/champion.svg",
                    area: "league",
                  ),
                  SizedBox(
                    width: width * 0.018283,
                  ),
                  Container(
                    width: 2.9,
                    margin: EdgeInsets.only(top: 10.h, bottom: 10.h),
                    decoration:
                        const BoxDecoration(color: SharedColors.whiteColor),
                  ),
                  SizedBox(
                    width: width * 0.018283,
                  ),
                  const ColumnsTeamInfoTeamProfile(
                    title: "2",
                    path: "assetes/svg/manmatch.svg",
                    area: "Man of the match",
                  ),
                  SizedBox(
                    width: width * 0.018283,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.h, bottom: 10.h),
                    width: 2.9,
                    decoration:
                        const BoxDecoration(color: SharedColors.whiteColor),
                  ),
                  SizedBox(
                    width: width * 0.018283,
                  ),
                  const ColumnsTeamInfoTeamProfile(
                    title: "9",
                    path: "assetes/svg/champion.svg",
                    area: "Mixed",
                  ),
                  SizedBox(
                    width: width * 0.018283,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.h, bottom: 10.h),
                    width: 2.9,
                    decoration:
                        const BoxDecoration(color: SharedColors.whiteColor),
                  ),
                  SizedBox(
                    width: width * 0.018283,
                  ),
                  const ColumnsTeamInfoTeamProfile(
                    title: "11",
                    path: "assetes/svg/champion.svg",
                    area: "Knockout",
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
