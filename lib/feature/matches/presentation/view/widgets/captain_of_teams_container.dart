import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fut/core/component/titel_container.dart';
import 'package:fut/core/theme/colors.dart';

class CaptainOfTeamsContainer extends StatelessWidget {
  const CaptainOfTeamsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Container(
      width: width < 1000 ? width * 0.3133047 : width * 0.2133047,
      // height: width < 1000 ? height * 0.418605 : (height * 0.418605) * (2 / 3),
      decoration: BoxDecoration(
        color: SharedColors.blackColor.withOpacity(0.7),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Column(
        children: [
          TitelContainer(
            alignment: Alignment.center,
            title: "Players to Watch",
            width: width < 1000 ? width * 0.29184 : width * 0.29184,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IntrinsicWidth(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      "assetes/svg/capt.svg",
                      height: width < 1000
                          ? height * 0.044883
                          : (height * 0.034883) * 0.8,
                      width: width < 1000
                          ? width * 0.016094
                          : (width * 0.016094) * 0.8,
                    ),
                    CircleAvatar(
                      radius: width < 1000 ? 60.r : 50.r,
                      backgroundColor: const Color(0xff001999),
                      /*  foregroundImage:
                          const AssetImage("assetes/images/cris.png"), */

                      child: Image.asset(
                        "assetes/images/cris.png",
                        width: width < 1000
                            ? width * 0.086909
                            : (width * 0.086909) * 2,
                        height: width < 1000
                            ? height * 0.188372
                            : (height * 0.188372) * 2,
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
                    )
                  ],
                ),
              ),
              IntrinsicWidth(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      "assetes/svg/capt.svg",
                      height: width < 1000
                          ? height * 0.044883
                          : (height * 0.034883) * 0.8,
                      width: width < 1000
                          ? width * 0.016094
                          : (width * 0.016094) * 0.8,
                    ),
                    CircleAvatar(
                      radius: width < 1000 ? 60.r : 50.r,
                      backgroundColor: const Color(0xff990000),
                      // foregroundImage:
                      //     const AssetImage("assetes/images/mo.png"),
                      child: Image.asset(
                        "assetes/images/mo.png",
                        width: width < 1000
                            ? width * 0.086909
                            : (width * 0.086909) * 2,
                        height: width < 1000
                            ? height * 0.188372
                            : (height * 0.188372) * 2,
                      ),
                    ),
                    Center(
                      child: Text(
                        "Donga",
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
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
