import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fut/core/component/titel_container.dart';
import 'package:fut/core/theme/colors.dart';

class PersonalInfoInRefreeProfile extends StatelessWidget {
  const PersonalInfoInRefreeProfile({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      width: width < 1000 ? width * 0.29184 : width * 0.29184,
      height: width < 1000 ? height * 0.362791 : (height * 0.362791) * (2 / 3),
      decoration: BoxDecoration(
          color: SharedColors.blackColor.withOpacity(0.7),
          borderRadius: BorderRadius.circular(20.r)),
      child: Column(
        children: [
          TitelContainer(
            title: "Readiness",
            width: width < 1000 ? width * 0.29184 : width * 0.29184,
          ),
          Container(
            height: width < 1000
                ? (height * 0.362791) - 51.h
                : ((height * 0.362791) * (2 / 3)) - 51.h,
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(
                      "assetes/svg/loc.svg",
                      color: SharedColors.greenColor,
                      width: width * 0.030386,
                      height: height * 0.065813,
                    ),
                    Text(
                      "Address",
                      style: TextStyle(
                          fontFamily: "poppin",
                          fontSize: width < 1000
                              ? width * 0.016094
                              : (width * 0.016094) * 0.75,
                          color: SharedColors.whiteColor,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "New Cairo",
                      style: TextStyle(
                          fontFamily: "poppin",
                          fontSize: width < 1000
                              ? width * 0.016094
                              : (width * 0.016094) * 0.75,
                          color: SharedColors.whiteColor,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
                SizedBox(
                  width: width * 0.012875,
                ),
                Container(
                  width: 3,
                  height: width < 1000
                      ? height * 0.1186046
                      : (height * 0.1186046) * (2 / 3),
                  decoration:
                      const BoxDecoration(color: SharedColors.whiteColor),
                ),
                SizedBox(
                  width: width * 0.012875,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: width * 0.030386,
                      height: height * 0.065813,
                      decoration: const BoxDecoration(
                        color: SharedColors.greenColor,
                        shape: BoxShape.circle,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "age",
                        style: TextStyle(
                            color: SharedColors.whiteColor,
                            fontWeight: FontWeight.bold,
                            fontFamily: "poppin",
                            fontSize: width * 0.01072),
                      ),
                    ),
                    Text(
                      "27",
                      style: TextStyle(
                          fontFamily: "poppin",
                          fontSize: width < 1000
                              ? width * 0.016094
                              : (width * 0.016094) * 0.75,
                          color: SharedColors.whiteColor,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Averages",
                      style: TextStyle(
                          fontFamily: "poppin",
                          fontSize: width < 1000
                              ? width * 0.016094
                              : (width * 0.016094) * 0.75,
                          color: SharedColors.whiteColor,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  width: width * 0.012875,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
