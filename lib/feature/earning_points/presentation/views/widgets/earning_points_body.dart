import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fut/core/responsive_font.dart';
import 'package:fut/core/theme/colors.dart';
import 'package:fut/feature/earning_points/presentation/views/widgets/category_brandes.dart';
import 'package:fut/feature/earning_points/presentation/views/widgets/earned_points_dialog.dart';
import 'package:responsive_grid/responsive_grid.dart';

class EarningPointsBody extends StatefulWidget {
  const EarningPointsBody({super.key});

  @override
  State<EarningPointsBody> createState() => _EarningPointsBodyState();
}

class _EarningPointsBodyState extends State<EarningPointsBody> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      width: double.infinity,
      height: width < 1000 ? height * 0.85 : height * 0.87,
      margin: EdgeInsets.symmetric(horizontal: width * 0.022918),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: width * 0.02326,
            ),
            const CategoryBrandes(),
            SizedBox(
              height: width * 0.02326,
            ),
            ResponsiveGridList(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              desiredItemWidth:
                  width < 1000 ? width * 0.10529 : (width * 0.10729) * (3 / 4),
              children: List.generate(
                16,
                (index) => GestureDetector(
                  onTap: () {
                    showDialog(
                      builder: (context) => const EarnedPointsDialog(),
                      context: context,
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.all(width < 1000
                        ? width * 0.01072
                        : (width * 0.01072) * (3 / 4)),
                    width: width < 1000
                        ? width * 0.10729
                        : (width * 0.10729) * (2 / 3),
                    height: width < 1000
                        ? height * 0.2465
                        : ((height * 0.2465) * (2 / 3)),
                    // decoration:
                    //     const BoxDecoration(color: SharedColors.whiteColor),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0.0,
                          right: 0.0,
                          top: height * 0.0272,
                          bottom: height * 0.02558,
                          child: Container(
                            alignment: Alignment.center,
                            height: height * 0.18372,
                            decoration: BoxDecoration(
                                color: SharedColors.whiteColor,
                                borderRadius: BorderRadius.circular(20.r)),
                            child: Image.asset("assetes/images/cookdoor.png",
                                width: width < 1000
                                    ? width * 0.07296
                                    : (width * 0.07296) * (3 / 4),
                                height: width < 1000
                                    ? height * 0.1279
                                    : ((height * 0.1279) * (2 / 3))),
                          ),
                        ),
                        Positioned(
                          top: 0.0,
                          left: width < 1000
                              ? width * 0.015094
                              : (width * 0.012094) * (1 / 2),
                          right: width < 1000
                              ? width * 0.015094
                              : (width * 0.012094) * (1 / 2),
                          child: SizedBox(
                            width: width * 0.0874,
                            child: Stack(
                              children: [
                                Positioned(
                                  top: height * 0.0027,
                                  left: width * 0.0158,
                                  child: Container(
                                    width: width < 1000
                                        ? width * 0.051502
                                        : (width * 0.051502) * (3 / 4),
                                    height: width < 1000
                                        ? height * 0.048837
                                        : (height * 0.048837) * (2 / 3),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(5.r),
                                        border: Border.all(
                                            color: SharedColors.greenColor,
                                            width: 2)),
                                    child: Text(
                                      '20K',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Colors.black,
                                        fontSize: getResponsiveFont(context,
                                            fontSize: 12),
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                SvgPicture.asset(
                                  'assetes/svg/cofut.svg',
                                  width: width * 0.026824,
                                  height: width < 1000
                                      ? height * 0.05813
                                      : (height * 0.05813) * (3 / 4),
                                  fit: BoxFit.cover,
                                  // color: const Color(0xffF07B0F),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                            top: width < 1000
                                ? height * 0.19372
                                : (height * 0.19372) * 0.6,
                            left: 10,
                            right: 10,
                            child: Container(
                              alignment: Alignment.center,
                              width: width < 1000
                                  ? width * 0.086909
                                  : (width * 0.086909) * (2 / 3),
                              height: width < 1000
                                  ? height * 0.048837
                                  : (height * 0.048837) * (2 / 3),
                              decoration: BoxDecoration(
                                color: SharedColors.greenColor,
                                border: Border.all(
                                    color: SharedColors.whiteColor, width: 2),
                                borderRadius: BorderRadius.circular(
                                  5.r,
                                ),
                              ),
                              child: Text(
                                "1 Hour Booking",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: SharedColors.whiteColor,
                                  fontSize: width < 1000
                                      ? width * 0.00972
                                      : (width * 0.01072) * (2 / 3),
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
