import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/component/titel_container.dart';
import 'package:fut/core/theme/colors.dart';

class PlayerPointes extends StatelessWidget {
  const PlayerPointes({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Container(
      width: width * 0.3401288,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Column(
        children: [
          TitelContainer(
            title: "Earned Points",
            width: width * 0.3401288,
          ),
          Container(
            width: width * 0.3401287,
            height: width < 1000
                ? height * 0.080069
                : (height * 0.079069) * (2 / 3),
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.r),
                bottomRight: Radius.circular(20.r),
              ),
              color: SharedColors.greyBoldColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Moaz Mazen",
                  style: TextStyle(
                    fontFamily: "poppin",
                    fontWeight: FontWeight.w600,
                    fontSize: width * 0.021459,
                    color: SharedColors.whiteColor,
                  ),
                ),
                Container(
                  width: width * 0.030042,
                  height: height * 0.065116,
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border:
                        Border.all(color: SharedColors.whiteColor, width: 2),
                    color: SharedColors.greyBoldColor,
                  ),
                  child: Container(
                    width: width * 0.0278969,
                    height: height * 0.060465,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: SharedColors.whiteColor,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "10",
                      style: TextStyle(
                        fontFamily: "poppin",
                        fontWeight: FontWeight.bold,
                        fontSize:
                            width > 1000 ? width * 0.016459 : width * 0.014459,
                        color: SharedColors.greenColor,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
