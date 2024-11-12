import 'package:flutter/material.dart';
import 'package:flutter_pannable_rating_bar/flutter_pannable_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:fut/core/component/titel_container.dart';
import 'package:fut/core/theme/colors.dart';

class ManOfMatchContainer extends StatefulWidget {
  const ManOfMatchContainer({super.key});

  @override
  State<ManOfMatchContainer> createState() => _ManOfMatchContainerState();
}

class _ManOfMatchContainerState extends State<ManOfMatchContainer> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Container(
      width: width < 1000 ? width * 0.148068 : width * 0.148068,
      // height: width < 1000 ? height * 0.418605 : (height * 0.418605) * (2 / 3),
      decoration: BoxDecoration(
        color: SharedColors.blackColor.withOpacity(0.7),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Column(
        children: [
          TitelContainer(
            alignment: Alignment.center,
            title: "Man of the Match",
            width: width < 1000 ? width * 0.29184 : width * 0.29184,
            fontSize: width * 0.012948,
          ),
          CircleAvatar(
            radius: width < 1000 ? 60.r : 50.r,
            backgroundColor: const Color(0xff001999),
            /*  foregroundImage:
                const AssetImage("assetes/images/cris.png"), */

            child: Image.asset(
              "assetes/images/mo.png",
              width: width < 1000 ? width * 0.086909 : (width * 0.086909) * 2,
              height:
                  width < 1000 ? height * 0.188372 : (height * 0.188372) * 2,
            ),
          ),
          Center(
            child: Text(
              "Bondok",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: SharedColors.whiteColor,
                fontFamily: "poppin",
                fontSize: width < 1000
                    ? width * 0.019313
                    : (width * 0.019313) * (2 / 3),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          PannableRatingBar(
            rate: 5,
            items: List.generate(
                5,
                (index) => RatingWidget(
                      selectedColor: SharedColors.yellowColor,
                      unSelectedColor: Colors.grey,
                      child: ImageIcon(
                        const AssetImage("assetes/images/rateing.png"),
                        size: 25.h,
                      ),
                    )),
            onChanged: (value) {
              setState(() {});
            },
          ),
          SizedBox(
            height: 10.h,
          )
        ],
      ),
    );
  }
}
