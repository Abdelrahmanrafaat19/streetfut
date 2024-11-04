import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/theme/colors.dart';

class ButtonsRow extends StatelessWidget {
  const ButtonsRow({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: width < 1000
                  ? (height * 0.0232558) / 2.5
                  : ((height * 0.0232558) / 2.5) * (2 / 3)),
          decoration: BoxDecoration(
            color: SharedColors.greenColor,
            borderRadius: BorderRadius.circular(15.r),
          ),
          child: Text(
            " Edit Profile  ",
            style: TextStyle(
              color: SharedColors.whiteColor,
              fontFamily: "poppin",
              fontWeight: FontWeight.bold,
              fontSize: width < 1000
                  ? width * 0.016094
                  : (width * 0.016094) * (2 / 3),
            ),
          ),
        ),
        SizedBox(
          width: width * 0.0107296,
        ),
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: width < 1000
                  ? (height * 0.0232558) / 2.5
                  : ((height * 0.0232558) / 2.5) * (2 / 3)),
          decoration: BoxDecoration(
            color: SharedColors.greenColor,
            borderRadius: BorderRadius.circular(15.r),
          ),
          child: Row(
            children: [
              Text(
                " Share Profile   ",
                style: TextStyle(
                  color: SharedColors.whiteColor,
                  fontFamily: "poppin",
                  fontWeight: FontWeight.bold,
                  fontSize: width < 1000
                      ? width * 0.016094
                      : (width * 0.016094) * (2 / 3),
                ),
              ),
              Icon(
                Icons.share,
                color: SharedColors.whiteColor,
                size: width * 0.0128755,
              )
            ],
          ),
        )
      ],
    );
  }
}
