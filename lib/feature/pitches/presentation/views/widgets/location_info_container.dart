import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/component/default_button.dart';
import 'package:fut/core/theme/colors.dart';
import 'package:fut/feature/pitches/presentation/views/widgets/container_title.dart';

class LocationInfoContainer extends StatefulWidget {
  const LocationInfoContainer({super.key});

  @override
  State<LocationInfoContainer> createState() => _LocationInfoContainerState();
}

class _LocationInfoContainerState extends State<LocationInfoContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          20.r,
        ),
      ),
      child: Column(
        children: [
           ContainerTitle(title: "Location Info"),
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
                  children: [
                    Icon(
                      Icons.location_on,
                      color: SharedColors.greenColor,
                      size: 33.h,
                    ),
                    Text(
                      "Nasr City",
                      style: TextStyle(
                        fontFamily: "postnobills",
                        fontSize: 20.h,
                        color: SharedColors.whiteColor,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Address: Inspire international School, Third Settlement ",
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontFamily: "postnobills",
                        fontSize: 20.h,
                        color: SharedColors.whiteColor,
                      ),
                    ),
                    defaultButton(
                        text: "Get Location",
                        fontSize: 20.h,
                        color: SharedColors.greenColor,
                        fontFamily: "TimesNewRoman",
                        paddingrl: 15.w,
                        paddingtb: 5.h)
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
