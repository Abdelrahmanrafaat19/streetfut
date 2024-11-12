import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fut/core/theme/colors.dart';
import 'package:fut/core/component/columns_team_info_team_profile.dart';
import 'package:fut/core/component/titel_container.dart';

class TeamInfoContainer extends StatelessWidget {
  const TeamInfoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      width: width < 1000 ? width * 0.643776 : width * 0.543776,
      height: width < 1000 ? height * 0.362791 : (height * 0.362791) * (2 / 3),
      decoration: BoxDecoration(
          color: SharedColors.blackColor.withOpacity(0.7),
          borderRadius: BorderRadius.circular(20.r)),
      child: Column(
        children: [
          TitelContainer(
            title: "Team Info",
            width: width < 1000 ? width * 0.643776 : width * 0.543776,
          ),
          Container(
            height: width < 1000
                ? (height * 0.362791) - 51.h
                : ((height * 0.362791) * (2 / 3)) - 51.h,
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: width * 0.048283),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const ColumnsTeamInfoTeamProfile(
                  title: "Area",
                  path: "assetes/svg/loc.svg",
                  area: "Naser City",
                ),
                SizedBox(
                  width: width * 0.048283,
                ),
                Container(
                  margin: EdgeInsets.only(top: 10.h, bottom: 10.h),
                  width: 1,
                  decoration:
                      const BoxDecoration(color: SharedColors.whiteColor),
                ),
                SizedBox(
                  width: width * 0.038283,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: width * 0.030386,
                      height: height * 0.065813,
                      decoration: const BoxDecoration(
                        color: SharedColors.greenColor,
                        shape: BoxShape.circle,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "age",
                        style: TextStyle(
                            color: SharedColors.whiteColor,
                            fontWeight: FontWeight.bold,
                            fontFamily: "poppin",
                            fontSize: width * 0.01072),
                      ),
                    ),
                    Text(
                      "27",
                      style: TextStyle(
                          fontFamily: "poppin",
                          fontSize: width < 1000
                              ? width * 0.016094
                              : (width * 0.016094) * 0.75,
                          color: SharedColors.whiteColor,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Averages",
                      style: TextStyle(
                          fontFamily: "poppin",
                          fontSize: width < 1000
                              ? width * 0.016094
                              : (width * 0.016094) * 0.75,
                          color: SharedColors.whiteColor,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  width: width * 0.038283,
                ),
                Container(
                  margin: EdgeInsets.only(top: 10.h, bottom: 10.h),
                  width: 1,
                  decoration:
                      const BoxDecoration(color: SharedColors.whiteColor),
                ),
                SizedBox(
                  width: width * 0.038283,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(
                      "assetes/svg/calender.svg",
                      color: SharedColors.greenColor,
                      width: width < 1000
                          ? width * 0.020386
                          : (width * 0.020386) * (2 / 3),
                      height: width < 1000
                          ? height * 0.055813
                          : (height * 0.055813) * (2 / 3),
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 5.h, horizontal: 2.w),
                          decoration: BoxDecoration(
                              color: SharedColors.whiteColor,
                              borderRadius: BorderRadius.circular(5.r)),
                          child: Text(
                            "SUN",
                            style: TextStyle(
                                fontFamily: "poppin",
                                fontSize: width < 1000
                                    ? width * 0.016094
                                    : (width * 0.016094) * (2 / 3),
                                color: SharedColors.greenColor,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 5.h, horizontal: 2.w),
                          decoration: BoxDecoration(
                              color: SharedColors.whiteColor,
                              borderRadius: BorderRadius.circular(5.r)),
                          child: Text(
                            "FRI",
                            style: TextStyle(
                                fontFamily: "poppin",
                                fontSize: width < 1000
                                    ? width * 0.016094
                                    : (width * 0.016094) * (2 / 3),
                                color: SharedColors.greenColor,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 5.h, horizontal: 2.w),
                          decoration: BoxDecoration(
                              color: SharedColors.whiteColor,
                              borderRadius: BorderRadius.circular(5.r)),
                          child: Text(
                            "WED",
                            style: TextStyle(
                                fontFamily: "poppin",
                                fontSize: width < 1000
                                    ? width * 0.016094
                                    : (width * 0.016094) * (2 / 3),
                                color: SharedColors.greenColor,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Usual Playing Days ",
                      style: TextStyle(
                          fontFamily: "poppin",
                          fontSize: width < 1000
                              ? width * 0.016094
                              : (width * 0.016094) * 0.75,
                          color: SharedColors.whiteColor,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
