import 'package:flutter/material.dart';
import 'package:flutter_pannable_rating_bar/flutter_pannable_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/theme/colors.dart';

class TeamAPlanColumn extends StatefulWidget {
  const TeamAPlanColumn({super.key});

  @override
  State<TeamAPlanColumn> createState() => _TeamAPlanColumnState();
}

class _TeamAPlanColumnState extends State<TeamAPlanColumn> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Image.asset(
          "assetes/images/teamplab.png",
        ),
        Text(
          "1-2-1",
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
              "assetes/images/at.png",
              width: width * 0.049356,
              height: height * 0.13954,
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
              "assetes/images/blueshert.png",
              width: width * 0.049356,
              height: height * 0.15954,
            ),
          ],
        )
      ],
    );
  }
}
