import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/component/custam_drop_down_field.dart';
import 'package:fut/core/theme/colors.dart';

class TeamsDropDownRefreeStartMatch extends StatelessWidget {
  final List<String> dataTeamA, dataTeamB;
  const TeamsDropDownRefreeStartMatch(
      {super.key, required this.dataTeamA, required this.dataTeamB});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        CustamDropDwonField(
          text: "Team A",
          data: dataTeamA,
          width: width * 0.10193,
          height: height * 0.069767,
          backGroundColor: SharedColors.whiteColor,
          textColor: SharedColors.blackColor,
          iconSize: width < 1000
              ? width * 0.012875 * 2
              : (width * 0.012875 * 2) * 0.8,
          fontSize: width * 0.012875,
        ),
        SizedBox(
          height: 10.h,
        ),
        CustamDropDwonField(
          text: "Team B",
          data: dataTeamB,
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
    );
  }
}
