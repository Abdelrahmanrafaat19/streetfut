import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/theme/colors.dart';
import 'package:fut/core/component/columns_team_info_team_profile.dart';
import 'package:fut/core/component/titel_container.dart';

class StatisticsContainer extends StatefulWidget {
  const StatisticsContainer({super.key});

  @override
  State<StatisticsContainer> createState() => _StatisticsContainerState();
}

class _StatisticsContainerState extends State<StatisticsContainer> {
  final ScrollController _scrollController = ScrollController();
  String colorValue = "blue";

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToTop() {
    _scrollController.animateTo(
      0.0, // scroll offset to top
      duration: const Duration(milliseconds: 100),
      curve: Curves.easeInOut,
    );
  }

  void _scrollToBottom() {
    _scrollController.animateTo(
      _scrollController.position.maxScrollExtent, // scroll offset to bottom
      duration: const Duration(milliseconds: 100),
      curve: Curves.easeInOut,
    );
  }

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
            title: "Statistics",
            width: width < 1000 ? width * 0.643776 : width * 0.543776,
          ),
          Container(
            height: width < 1000
                ? (height * 0.362791) - 51.h
                : ((height * 0.362791) * (2 / 3)) - 51.h,
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => setState(() {
                    _scrollToTop();
                    colorValue = "blue";
                  }),
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: SharedColors.whiteColor,
                    size: height * 0.031395,
                  ),
                ),
                SizedBox(
                  width: width < 1000 ? width * 0.543776 : width * 0.443776,
                  height: width < 1000
                      ? (height * 0.362791) - 51.h
                      : ((height * 0.362791) * (2 / 3)) - 51.h,
                  child: SingleChildScrollView(
                    controller: _scrollController,
                    scrollDirection: Axis.horizontal,
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
                          decoration: const BoxDecoration(
                              color: SharedColors.whiteColor),
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
                          decoration: const BoxDecoration(
                              color: SharedColors.whiteColor),
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
                          decoration: const BoxDecoration(
                              color: SharedColors.whiteColor),
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
                        Container(
                          margin: EdgeInsets.only(top: 10.h, bottom: 10.h),
                          width: 2.9,
                          decoration: const BoxDecoration(
                              color: SharedColors.whiteColor),
                        ),
                        SizedBox(
                          width: width * 0.018283,
                        ),
                        const ColumnsTeamInfoTeamProfile(
                          title: "9",
                          path: "assetes/svg/redcard.svg",
                          area: "yellow cart",
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => setState(() {
                    _scrollToBottom();
                    colorValue = "red";
                  }),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: SharedColors.whiteColor,
                    size: height * 0.031395,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
