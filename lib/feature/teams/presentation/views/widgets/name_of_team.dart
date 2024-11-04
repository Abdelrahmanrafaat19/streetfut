import 'package:flutter/material.dart';
import 'package:fut/core/theme/colors.dart';

class NameOfTeam extends StatelessWidget {
  const NameOfTeam({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image(
          image: const AssetImage("assetes/images/at.png"),
          width: width < 1000 ? width * 0.044377 : (width * 0.044377) * (2 / 3),
          height:
              width < 1000 ? height * 0.106279 : (height * 0.106279) * (2 / 3),
        ),
        SizedBox(
          width: width < 1000 ? width * 0.010729 : (width * 0.010729) * (2 / 3),
        ),
        Text(
          "Ahlawya",
          style: TextStyle(
            color: SharedColors.whiteColor,
            fontFamily: "poppin",
            fontWeight: FontWeight.w800,
            fontSize:
                width < 1000 ? width * 0.033347 : (width * 0.0343347) * (2 / 3),
          ),
        )
      ],
    );
  }
}
