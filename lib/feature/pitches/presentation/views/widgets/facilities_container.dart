import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/theme/colors.dart';
import 'package:fut/feature/pitches/presentation/views/widgets/container_title.dart';

class FacilitiesContainer extends StatelessWidget {
  const FacilitiesContainer({super.key});

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
           ContainerTitle(title: "Facilities",width: 450.w,),
          Container(
            width: double.infinity,
            height: 200.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.r),
                  bottomRight: Radius.circular(20.r)),
              color: SharedColors.greyBoldColor,
            ),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "assetes/svg/hroundp.png",
                        scale: 0.5,
                      ),
                    ),
                    Text(
                      "Parking",
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontFamily: "postnobills",
                        fontSize: 20.h,
                        color: SharedColors.whiteColor,
                      ),
                    ),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
