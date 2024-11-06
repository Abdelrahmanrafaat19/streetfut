import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/theme/colors.dart';
import 'package:fut/feature/teams/presentation/views/widgets/columns_team_info_team_profile.dart';
import 'package:fut/core/component/titel_container.dart';

class StatisticsContainer extends StatelessWidget {
  const StatisticsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      width: width < 1000 ? width * 0.643776 : width * 0.543776,
      height: width < 1000 ? height * 0.362791 : (height * 0.362791) * (2 / 3),
      decoration: BoxDecoration(
          color: SharedColors.greyBoldColor,
          borderRadius: BorderRadius.circular(20.r)),
      child: Column(
        children: [
          TitelContainer(
            title: "Statistics",
            width: width < 1000 ? width * 0.643776 : width * 0.543776,
          ),
          Container(
            height: width < 1000
                ? (height * 0.362791) - 51.h
                : ((height * 0.362791) * (2 / 3)) - 51.h,
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const ColumnsTeamInfoTeamProfile(
                  title: "50",
                  path: "assetes/svg/playground.svg",
                  area: "Matches Played",
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
                  title: "20",
                  path: "assetes/svg/fi.svg",
                  area: "Scored Goals",
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
                  title: "6",
                  path: "assetes/svg/champion.svg",
                  area: "Tournaments",
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
                  path: "assetes/svg/yellowcart.svg",
                  area: "yellow cart",
                ),
                SizedBox(
                  width: width * 0.018283,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
