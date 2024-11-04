import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fut/core/theme/colors.dart';

class ColumnsTeamInfoTeamProfile extends StatelessWidget {
  final String path, title, area;
  const ColumnsTeamInfoTeamProfile(
      {super.key, required this.path, required this.title, required this.area});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SvgPicture.asset(
          path,
          color: SharedColors.greenColor,
          width: width < 1000 ? width * 0.020386 : (width * 0.020386) * (2 / 3),
          height:
              width < 1000 ? height * 0.055813 : (height * 0.055813) * (2 / 3),
        ),
        Text(
          title,
          style: TextStyle(
              fontFamily: "poppin",
              fontSize:
                  width < 1000 ? width * 0.016094 : (width * 0.016094) * 0.75,
              color: SharedColors.whiteColor,
              fontWeight: FontWeight.w600),
        ),
        Text(
          area,
          style: TextStyle(
              fontFamily: "poppin",
              fontSize:
                  width < 1000 ? width * 0.016094 : (width * 0.016094) * 0.75,
              color: SharedColors.whiteColor,
              fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
