import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fut/core/theme/colors.dart';

class MatchTitelColumn extends StatelessWidget {
  const MatchTitelColumn({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return IntrinsicWidth(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            "assetes/logo/logofut.png",
            height: height * 0.141860,
            width: width * 0.04828,
          ),
          Text(
            "Semi Final",
            style: TextStyle(
              color: SharedColors.whiteColor,
              fontFamily: "poppin",
              fontSize: width < 1000
                  ? width * 0.0354077
                  : (width * 0.0354077) * (2 / 3),
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            "Maadi Tournament",
            style: TextStyle(
              color: SharedColors.greenColor,
              fontFamily: "poppin",
              fontSize: width < 1000
                  ? width * 0.0193133
                  : (width * 0.0193133) * (2 / 3),
              fontWeight: FontWeight.w600,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Friday",
                style: TextStyle(
                  color: SharedColors.whiteColor,
                  fontFamily: "poppin",
                  fontSize: width < 1000
                      ? width * 0.0193133
                      : (width * 0.0193133) * (2 / 3),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SvgPicture.asset(
                "assetes/svg/cloud.svg",
                height: height * 0.069767,
                width: width * 0.0321888,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "13Nov",
                style: TextStyle(
                  color: SharedColors.whiteColor,
                  fontFamily: "poppin",
                  fontSize: width < 1000
                      ? width * 0.0193133
                      : (width * 0.0193133) * (2 / 3),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "26C",
                style: TextStyle(
                  color: SharedColors.whiteColor,
                  fontFamily: "poppin",
                  fontSize: width < 1000
                      ? width * 0.0193133
                      : (width * 0.0193133) * (2 / 3),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Text(
            "EL-HORYA Stadium",
            style: TextStyle(
              color: SharedColors.whiteColor,
              fontFamily: "poppin",
              fontSize: width < 1000
                  ? width * 0.0193133
                  : (width * 0.0193133) * (2 / 3),
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
