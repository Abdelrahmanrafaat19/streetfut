import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/theme/colors.dart';
import 'package:fut/feature/teams/presentation/views/widgets/buttons_row.dart';
import 'package:fut/feature/teams/presentation/views/widgets/mvp_container.dart';
import 'package:fut/feature/teams/presentation/views/widgets/name_of_team.dart';
import 'package:fut/feature/teams/presentation/views/widgets/statistics_container.dart';
import 'package:fut/feature/teams/presentation/views/widgets/team_info_container.dart';
import 'package:fut/feature/teams/presentation/views/widgets/team_squad_container.dart';
import 'package:fut/core/component/titel_container.dart';

class TeamProfileBody extends StatefulWidget {
  const TeamProfileBody({super.key});

  @override
  State<TeamProfileBody> createState() => _TeamProfileBodyState();
}

class _TeamProfileBodyState extends State<TeamProfileBody> {
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
    return SizedBox(
      width: double.infinity,
      height: width < 1000 ? height * 0.85 : height * 0.87,
      // margin: EdgeInsets.symmetric(horizontal: width * 0.042918),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: width < 1000 ? width * 0.643776 : width * 0.543776,
            child: ListView(
              children: [
                const NameOfTeam(),
                SizedBox(
                  height: width < 1000
                      ? height * 0.0272093
                      : (height * 0.0272093) * (2 / 3),
                ),
                const ButtonsRow(),
                SizedBox(
                  height: width < 1000
                      ? height * 0.041860
                      : (height * 0.041860) * (2 / 3),
                ),
                const TeamInfoContainer(),
                SizedBox(
                  height: width < 1000
                      ? height * 0.041860
                      : (height * 0.041860) * (2 / 3),
                ),
                const TeamSquadContainer(),
                SizedBox(
                  height: width < 1000
                      ? height * 0.041860
                      : (height * 0.041860) * (2 / 3),
                ),
                const StatisticsContainer(),
                SizedBox(
                  height: width < 1000
                      ? height * 0.041860
                      : (height * 0.041860) * (2 / 3),
                ),
                IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width:
                            width > 1000 ? width * 0.175965 : width * 0.205965,
                        height: width < 1000
                            ? height * 0.453488
                            : (height * 0.453488) * (2 / 3),
                        decoration: BoxDecoration(
                            color: SharedColors.blackColor.withOpacity(0.7),
                            borderRadius: BorderRadius.circular(20.r)),
                        child: Column(
                          children: [
                            TitelContainer(
                              fontSize: width < 1000
                                  ? width * 0.018513
                                  : (width * 0.018313) * 0.8,
                              title: "Home Kit",
                              width: width > 1000
                                  ? width * 0.175965
                                  : width * 0.185965,
                              alignment: Alignment.center,
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(
                                    width: width > 1000
                                        ? width * 0.105965
                                        : (width * 0.205965) / 2,
                                    height: 100,
                                    child: ListView(
                                      controller: _scrollController,
                                      scrollDirection: Axis.horizontal,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 8.0,
                                              bottom: 8.0,
                                              left: 4,
                                              right: 4),
                                          child: FittedBox(
                                            fit: BoxFit.fill,
                                            child: Image.asset(
                                              "assetes/images/redshert2.png",
                                              color: const Color(0xff001a99),
                                              width: width > 1000
                                                  ? width * 0.105965
                                                  : (width * 0.205965) / 2,
                                              height: 91,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: FittedBox(
                                            fit: BoxFit.fill,
                                            child: Image.asset(
                                              "assetes/images/redshert2.png",
                                              /*  width: width > 1000
                                                    ? width * 0.175965
                                                    : width * 0.205965,
                                                height: height * 0.15954, */
                                              width: width > 1000
                                                  ? width * 0.105965
                                                  : (width * 0.205965) / 2,
                                              height: 91,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      GestureDetector(
                                        onTap: () => setState(() {
                                          _scrollToTop();
                                          colorValue = "blue";
                                        }),
                                        child: Container(
                                          height: height * 0.0348837,
                                          width: width * 0.0160944,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                              color: SharedColors.greenColor,
                                              borderRadius:
                                                  BorderRadius.circular(5.r)),
                                          child: Icon(
                                            Icons.arrow_back_ios,
                                            color: SharedColors.whiteColor,
                                            size: height * 0.031395,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        colorValue,
                                        style: TextStyle(
                                          color: SharedColors.whiteColor,
                                          fontFamily: "poppin",
                                          fontSize: width < 1000
                                              ? width * 0.0193133
                                              : (width * 0.0193133) * (2 / 3),
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () => setState(() {
                                          _scrollToBottom();
                                          colorValue = "red";
                                        }),
                                        child: Container(
                                          height: height * 0.0348837,
                                          width: width * 0.0160944,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                              color: SharedColors.greenColor,
                                              borderRadius:
                                                  BorderRadius.circular(5.r)),
                                          child: Icon(
                                            Icons.arrow_forward_ios,
                                            color: SharedColors.whiteColor,
                                            size: height * 0.031395,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const MvpContainer(),
                      Container(
                        width:
                            width > 1000 ? width * 0.175965 : width * 0.205965,
                        decoration: BoxDecoration(
                            color: SharedColors.blackColor.withOpacity(0.7),
                            borderRadius: BorderRadius.circular(20.r)),
                        child: Column(
                          children: [
                            TitelContainer(
                              fontSize: width < 1000
                                  ? width * 0.018513
                                  : (width * 0.018313) * 0.8,
                              title: "Preferred Stadium ",
                              width: width > 1000
                                  ? width * 0.175965
                                  : width * 0.185965,
                              alignment: Alignment.center,
                            ),
                            Container(
                              height: width < 1000
                                  ? height * 0.473488 - 51.h
                                  : ((height * 0.453488) * (2 / 3)) - 51.h,
                              alignment: Alignment.center,
                              child: Container(
                                alignment: Alignment.bottomCenter,
                                width: width > 1000
                                    ? width * 0.175965
                                    : width * 0.205965,
                                height: width < 1000
                                    ? height * 0.453488 - 51.h
                                    : ((height * 0.453488) * (2 / 3)) - 51.h,
                                margin: const EdgeInsets.only(
                                    left: 5, right: 5, top: 3, bottom: 3),
                                padding: EdgeInsets.only(
                                    bottom: width < 1000
                                        ? height * 0.0395348
                                        : (height * 0.0395348) * (2 / 3)),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(11.r),
                                  image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                        AssetImage("assetes/images/presta.png"),
                                  ),
                                ),
                                child: Text(
                                  "EL-Horyia",
                                  style: TextStyle(
                                      color: SharedColors.whiteColor,
                                      fontFamily: "poppin",
                                      fontWeight: FontWeight.bold,
                                      fontSize: width < 1000
                                          ? width * 0.018513
                                          : (width * 0.018313) * 0.8),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height:
                width < 1000 ? height * 0.688372 : (height * 0.688372) * 0.75,
            decoration: BoxDecoration(
                color: SharedColors.greyBoldColor.withOpacity(0.3),
                borderRadius: BorderRadius.circular(10.r)),
            child: IntrinsicWidth(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: (width * 0.282188) * 0.8,
                    height: width < 1000
                        ? height * 0.544186
                        : (height * 0.544186) * 0.75,
                    child: ListView(
                      controller: _scrollController,
                      scrollDirection: Axis.horizontal,
                      children: [
                        Image.asset(
                          "assetes/images/teamplanteamprofile.png",
                          height: width < 1000
                              ? height * 0.544186
                              : (height * 0.544186) * 0.75,
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Image.asset(
                          "assetes/images/teamplanteamprofile.png",
                          height: width < 1000
                              ? height * 0.544186
                              : (height * 0.544186) * 0.75,
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () => setState(() {
                          _scrollToTop();
                        }),
                        child: Container(
                          height: height * 0.0348837,
                          width: width * 0.0160944,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: SharedColors.greenColor,
                              borderRadius: BorderRadius.circular(5.r)),
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: SharedColors.whiteColor,
                            size: height * 0.031395,
                          ),
                        ),
                      ),
                      Text(
                        "2-1-2",
                        style: TextStyle(
                          color: SharedColors.whiteColor,
                          fontFamily: "poppin",
                          fontSize: width < 1000
                              ? width * 0.0193133
                              : (width * 0.0193133) * (2 / 3),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => setState(() {
                          _scrollToBottom();
                        }),
                        child: Container(
                          height: height * 0.0348837,
                          width: width * 0.0160944,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: SharedColors.greenColor,
                              borderRadius: BorderRadius.circular(5.r)),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: SharedColors.whiteColor,
                            size: height * 0.031395,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
