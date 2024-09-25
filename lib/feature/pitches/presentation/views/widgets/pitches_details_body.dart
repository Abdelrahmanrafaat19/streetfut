import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/component/default_button.dart';
import 'package:fut/core/theme/colors.dart';
import 'package:fut/feature/pitches/presentation/views/widgets/container_title.dart';
import 'package:fut/feature/pitches/presentation/views/widgets/facilities_container.dart';
import 'package:fut/feature/pitches/presentation/views/widgets/location_info_container.dart';
import 'package:fut/feature/pitches/presentation/views/widgets/pitches_details.dart';

class PitchesDetailsBody extends StatefulWidget {
  const PitchesDetailsBody({super.key});

  @override
  State<PitchesDetailsBody> createState() => _PitchesDetailsBodyState();
}

class _PitchesDetailsBodyState extends State<PitchesDetailsBody> {
  double rating = 0.0;
  @override
  Widget build(BuildContext context) {
    debugPrint(MediaQuery.of(context).size.width.toString());
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          children: [
            const PitchesDetails(),
            SizedBox(
              height: 20.h,
            ),
            const LocationInfoContainer(),
            SizedBox(
              height: 20.h,
            ),
            const FacilitiesContainer(),
            SizedBox(
              height: 20.h,
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  20.r,
                ),
              ),
              child: Column(
                children: [
                  ContainerTitle(title: "Payment policy"),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                      horizontal: 5.w,
                      vertical: 22.h,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20.r),
                          bottomRight: Radius.circular(20.r)),
                      color: SharedColors.greyBoldColor,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                "Down payment: 50 EGP",
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontFamily: "postnobills",
                                  fontSize: 24.h,
                                  color: SharedColors.whiteColor,
                                ),
                              ),
                            ),
                            defaultButton(
                              text: "Premium Player Request",
                              fontSize: 20.h,
                              color: SharedColors.greenColor,
                              fontFamily: "TimesNewRoman",
                              paddingrl: 15.w,
                              paddingtb: 5.h,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.check_circle,
                              color: SharedColors.greenColor,
                              size: 30.h,
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Expanded(
                              child: Text(
                                "Reservations will be cancelled 8 hours before the appointment.",
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontFamily: "postnobills",
                                  fontSize: 32.h,
                                  color: SharedColors.whiteColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              width: 100.w,
              child: defaultButton(
                  text: "Book Now",
                  fontSize: 40.h,
                  color: SharedColors.greenColor,
                  fontFamily: "postnobills",
                  paddingtb: 10.h,
                  raduis: 20.r),
            ),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
    );
  }
}
