import 'package:flutter/material.dart';
import 'package:flutter_pannable_rating_bar/flutter_pannable_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/theme/colors.dart';

class RefereeRatingRow extends StatefulWidget {
  const RefereeRatingRow({super.key});

  @override
  State<RefereeRatingRow> createState() => _RefereeRatingRowState();
}

class _RefereeRatingRowState extends State<RefereeRatingRow> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Row(
      children: [
        Container(
          width: width * 0.202789,
          height: height * 0.07906,
          decoration: BoxDecoration(
            color: SharedColors.whiteColor,
            borderRadius: BorderRadius.circular(10.r),
          ),
          alignment: Alignment.center,
          child: Text(
            "Referee Rating",
            style: TextStyle(
              fontFamily: "poppin",
              fontWeight: FontWeight.w600,
              fontSize: width * 0.01609,
              color: SharedColors.blackColor,
            ),
          ),
        ),
        SizedBox(
          width: width * 0.051459,
        ),
        PannableRatingBar(
          rate: 2,
          items: List.generate(
              5,
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
      ],
    );
  }
}
