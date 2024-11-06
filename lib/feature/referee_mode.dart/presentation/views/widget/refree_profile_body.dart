import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fut/core/component/titel_container.dart';
import 'package:fut/core/theme/colors.dart';
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
                    padding: EdgeInsets.symmetric(horizontal: width * 0.048283),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              "assetes/svg/edit.svg",
                              color: SharedColors.whiteColor,
                            ),
                          ],
                        ),
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
