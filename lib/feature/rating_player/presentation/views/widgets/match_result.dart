import 'package:flutter/material.dart';
import 'package:fut/core/theme/colors.dart';

class MatchResult extends StatelessWidget {
  const MatchResult({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Row(
      children: [
        Image(
          image: const AssetImage("assetes/images/at.png"),
          width: width * 0.049356,
          height: height * 0.18186,
        ),
        SizedBox(
          width: width < 100 ? width * 0.14186 : 20,
        ),
        Text(
          "4",
          style: TextStyle(
            fontFamily: "poppin",
            fontWeight: FontWeight.w600,
            fontSize: width * 0.035407,
            color: SharedColors.whiteColor,
          ),
        ),
        SizedBox(
          width: width < 100 ? width * 0.14186 : 20,
        ),
        Text(
          "-",
          style: TextStyle(
            fontFamily: "poppin",
            fontWeight: FontWeight.w600,
            fontSize: width * 0.035407,
            color: SharedColors.midGreenColor,
          ),
        ),
        SizedBox(
          width: width < 100 ? width * 0.14186 : 20,
        ),
        Text(
          "2",
          style: TextStyle(
            fontFamily: "poppin",
            fontWeight: FontWeight.w600,
            fontSize: width * 0.035407,
            color: SharedColors.whiteColor,
          ),
        ),
        SizedBox(
          width: width < 100 ? width * 0.14186 : 20,
        ),
        Image(
          image: const AssetImage("assetes/images/teamimage.png"),
          width: width * 0.049356,
          height: height * 0.18186,
        ),
      ],
    );
  }
}
