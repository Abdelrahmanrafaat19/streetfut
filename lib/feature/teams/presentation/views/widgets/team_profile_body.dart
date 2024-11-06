import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/theme/colors.dart';
import 'package:fut/feature/teams/presentation/views/widgets/buttons_row.dart';
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
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      width: double.infinity,
      height: width < 1000 ? height * 0.8 : height * 0.87,
      margin: EdgeInsets.symmetric(horizontal: width * 0.042918),
      child: Row(
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width:
                            width > 1000 ? width * 0.175965 : width * 0.205965,
                        height: width < 1000
                            ? height * 0.453488
                            : (height * 0.453488) * (2 / 3),
                        decoration: BoxDecoration(
                            color: SharedColors.greyBoldColor,
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
                            Container(
                              height: width < 1000
                                  ? (height * 0.362791) - 51.h
                                  : ((height * 0.362791) * (2 / 3)) - 51.h,
                              alignment: Alignment.center,
                            )
                          ],
                        ),
                      ),
                      Container(
                        width:
                            width > 1000 ? width * 0.175965 : width * 0.205965,
                        height: width < 1000
                            ? height * 0.453488
                            : (height * 0.453488) * (2 / 3),
                        decoration: BoxDecoration(
                            color: SharedColors.greyBoldColor,
                            borderRadius: BorderRadius.circular(20.r)),
                        child: Column(
                          children: [
                            TitelContainer(
                              fontSize: width < 1000
                                  ? width * 0.018513
                                  : (width * 0.018313) * 0.8,
                              title: "MVP",
                              width: width > 1000
                                  ? width * 0.175965
                                  : width * 0.185965,
                              alignment: Alignment.center,
                            ),
                            Container(
                              height: width < 1000
                                  ? (height * 0.362791) - 51.h
                                  : ((height * 0.362791) * (2 / 3)) - 51.h,
                              alignment: Alignment.center,
                            )
                          ],
                        ),
                      ),
                      Container(
                        width:
                            width > 1000 ? width * 0.175965 : width * 0.205965,
                        height: width < 1000
                            ? height * 0.453488
                            : (height * 0.453488) * (2 / 3),
                        decoration: BoxDecoration(
                            color: SharedColors.greyBoldColor,
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
                                    left: 5, right: 5, top: 3),
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
                  )
                ],
              ))
        ],
      ),
    );
  }
}
