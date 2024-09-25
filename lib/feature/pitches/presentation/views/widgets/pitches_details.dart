import 'package:flutter/material.dart';
import 'package:flutter_pannable_rating_bar/flutter_pannable_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/theme/colors.dart';

class PitchesDetails extends StatefulWidget {
  const PitchesDetails({super.key});

  @override
  State<PitchesDetails> createState() => _PitchesDetailsState();
}

class _PitchesDetailsState extends State<PitchesDetails> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            width: 523.w,
            height: 250.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              image: const DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assetes/images/pitches.jpg"),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "X Field New Cairo",
                style: TextStyle(
                    fontFamily: "TimesNewRoman",
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 32.h),
              ),
              SizedBox(
                height: 13.h,
              ),
              PannableRatingBar(
                rate: 3,
                items: List.generate(
                    3,
                    (index) => RatingWidget(
                          selectedColor: SharedColors.greenColor,
                          unSelectedColor: Colors.grey,
                          child: Icon(
                            Icons.star,
                            size: 45.h,
                          ),
                        )),
                onChanged: (value) {
                  setState(() {});
                },
              ),
              SizedBox(
                height: 14.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "3.3K ",
                    style: TextStyle(
                      fontFamily: "TimesNewRoman",
                      color: SharedColors.whiteColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 24.h,
                    ),
                  ),
                  Text(
                    "Rating",
                    style: TextStyle(
                      fontFamily: "TimesNewRoman",
                      color: SharedColors.greenColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 24.h,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageIcon(
                    const AssetImage("assetes/svg/hroundp.png"),
                    color: SharedColors.greenColor,
                    size: 49.h,
                  ),
                  SizedBox(
                    width: 24.h,
                  ),
                  Text(
                    "2Fields",
                    style: TextStyle(
                      fontFamily: "TimesNewRoman",
                      color: SharedColors.whiteColor,
                      fontSize: 24.h,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageIcon(
                    const AssetImage("assetes/svg/cion.png"),
                    color: SharedColors.greenColor,
                    size: 49.h,
                  ),
                  3.horizontalSpace,
                  Text(
                    "250 EGP per Hour",
                    style: TextStyle(
                      fontFamily: "TimesNewRoman",
                      color: SharedColors.whiteColor,
                      fontSize: 24.h,
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
