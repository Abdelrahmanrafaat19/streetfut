import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/theme/colors.dart';

class FaildMassegeResult extends StatelessWidget {
  final int result;
  const FaildMassegeResult({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      width: double.infinity,
      height: width < 1000 ? height * 0.8 : height * 0.87,
      margin: EdgeInsets.symmetric(horizontal: width * 0.042918),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: width * 0.223176,
              height: width < 1000
                  ? height * 0.4674418
                  : (height * 0.4674418) * (3 / 4),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: SharedColors.greyBoldColor),
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      width: width * 0.223176,
                      height: width < 1000
                          ? height * 0.197674
                          : (height * 0.197674) * (3 / 4),
                      decoration: BoxDecoration(
                          gradient: result >= 95
                              ? const LinearGradient(
                                  colors: [
                                    Color(0xff9A8E14),
                                    Color(0xff95A324),
                                    Color(0xff90B834),
                                  ],
                                )
                              : null,
                          color: result >= 95 ? null : SharedColors.redColor,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.r),
                              topRight: Radius.circular(20.r))),
                    ),
                  ),
                  Positioned(
                      top: width > 1000 ? 2 : 20,
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: width * 0.1019313,
                            height: height * 0.220930,
                            padding: const EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: SharedColors.whiteColor, width: 2),
                              color: Colors.transparent,
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
                                "$result%",
                                style: TextStyle(
                                  fontFamily: "poppin",
                                  fontWeight: FontWeight.bold,
                                  fontSize: width > 1000
                                      ? width * 0.0343347
                                      : width * 0.0343347,
                                  color: result < 95
                                      ? SharedColors.redColor
                                      : SharedColors.greenColor,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: width < 1000
                                ? height * 0.06046
                                : (height * 0.06046) * (1 / 3),
                          ),
                          Text(
                            result < 95 ? "OPPS!!" : "Congratulation",
                            style: TextStyle(
                                fontFamily: "poppin",
                                fontWeight: FontWeight.bold,
                                fontSize: result < 95
                                    ? (width > 1000
                                        ? width * 0.0343347
                                        : width * 0.0343347)
                                    : (width > 1000
                                        ? width * 0.023605
                                        : width * 0.023605),
                                color: SharedColors.whiteColor),
                          ),
                        ],
                      ))
                ],
              ),
            ),
            SizedBox(
              height: height * 0.048837,
            ),
            result < 95
                ? Column(
                    children: [
                      Text(
                        "This test wasn’t your best, but you can definitely pass it the next time.",
                        style: TextStyle(
                            fontFamily: "poppin",
                            fontWeight: FontWeight.bold,
                            fontSize: width > 1000
                                ? width * 0.019313
                                : width * 0.019313,
                            color: SharedColors.whiteColor),
                      ),
                      SizedBox(
                        height: height * 0.028837,
                      ),
                      Text(
                        "(Must exceed 95% of the correct answers)",
                        style: TextStyle(
                            fontFamily: "poppin",
                            fontWeight: FontWeight.bold,
                            fontSize: width > 1000
                                ? width * 0.016094
                                : width * 0.016094,
                            color: SharedColors.whiteColor),
                      ),
                    ],
                  )
                : Text(
                    "Now You’re a Verified FUT Referee",
                    style: TextStyle(
                        fontFamily: "poppin",
                        fontWeight: FontWeight.bold,
                        fontSize:
                            width > 1000 ? width * 0.019313 : width * 0.019313,
                        color: SharedColors.whiteColor),
                  ),
          ],
        ),
      ),
    );
  }
}
