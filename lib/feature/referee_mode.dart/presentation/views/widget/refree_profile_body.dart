import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fut/core/component/titel_container.dart';
import 'package:fut/core/theme/colors.dart';
import 'package:fut/feature/referee_mode.dart/presentation/views/widget/ready_switch.dart';
import 'package:fut/feature/referee_mode.dart/presentation/views/widget/refree_name_image_profile.dart';

class RefreeProfileBody extends StatelessWidget {
  const RefreeProfileBody({super.key});

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
          children: [
            const RefreeNameImageProfile(),
            Container(
              width: width < 1000 ? width * 0.29184 : width * 0.29184,
              height: width < 1000
                  ? height * 0.362791
                  : (height * 0.362791) * (2 / 3),
              decoration: BoxDecoration(
                  color: SharedColors.greyBoldColor,
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: SvgPicture.asset(
                            "assetes/svg/edit.svg",
                            color: SharedColors.whiteColor,
                          ),
                        ),
                        SizedBox(height: height * 0.0395348),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const CustomSwitch(),
                            SizedBox(
                              width: width * 0.012875,
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10.h, bottom: 10.h),
                              width: 1,
                              decoration: const BoxDecoration(
                                  color: SharedColors.whiteColor),
                            ),
                            SizedBox(
                              width: width * 0.124463,
                              height: width < 1000
                                  ? height * 0.0844186
                                  : height * 0.0644186,
                              child: TextField(
                                style: TextStyle(
                                  color: SharedColors.blackColor,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "poppin",
                                  fontSize: width * 0.01609,
                                ),
                                textAlign: TextAlign.center,
                                cursorColor: SharedColors.blackColor,
                                cursorHeight: height * 0.0344186,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.all(10),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: SharedColors.whiteColor,
                                    ),
                                    borderRadius: BorderRadius.circular(25.r),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: SharedColors.whiteColor,
                                    ),
                                    borderRadius: BorderRadius.circular(25.r),
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: SharedColors.whiteColor,
                                    ),
                                    borderRadius: BorderRadius.circular(25.r),
                                  ),
                                  filled: true,
                                  fillColor: SharedColors.whiteColor,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
