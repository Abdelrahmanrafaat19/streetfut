import 'package:flutter/material.dart';
import 'package:flutter_pannable_rating_bar/flutter_pannable_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/theme/colors.dart';

class TeamBPlanColumn extends StatefulWidget {
  const TeamBPlanColumn({super.key});

  @override
  State<TeamBPlanColumn> createState() => _TeamBPlanColumnState();
}

class _TeamBPlanColumnState extends State<TeamBPlanColumn> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Image.asset(
          "assetes/images/planteamb.png",
        ),
        Text(
          "2-1-1",
          style: TextStyle(
            color: SharedColors.whiteColor,
            fontFamily: "poppin",
            fontSize:
                width < 1000 ? width * 0.019313 : (width * 0.019313) * (2 / 3),
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              "assetes/images/redshert.png",
              width: width * 0.049356,
              height: height * 0.15954,
            ),
            Column(
              children: [
                PannableRatingBar(
                  rate: 2,
                  items: List.generate(
                      5,
                      (index) => RatingWidget(
                            selectedColor: SharedColors.yellowColor,
                            unSelectedColor: Colors.grey,
                            child: ImageIcon(
                              const AssetImage("assetes/images/rateing.png"),
                              size: 45.h,
                            ),
                          )),
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
                Text(
                  "El koftagya",
                  style: TextStyle(
                    color: SharedColors.whiteColor,
                    fontFamily: "poppin",
                    fontSize: width < 1000
                        ? width * 0.019313
                        : (width * 0.019313) * (2 / 3),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Image.asset(
              "assetes/images/team a.png",
              width: width * 0.049356,
              height: height * 0.13954,
            ),
          ],
        )
      ],
    );
  }
}
