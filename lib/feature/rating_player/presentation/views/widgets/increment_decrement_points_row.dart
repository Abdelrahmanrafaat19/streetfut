import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/theme/colors.dart';

class IncrementDecrementPointsRow extends StatelessWidget {
  const IncrementDecrementPointsRow({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Row(
      children: [
        Text(
          "+",
          style: TextStyle(
            fontFamily: "poppin",
            fontWeight: FontWeight.w600,
            fontSize: width * 0.01609,
            color: SharedColors.midGreenColor,
          ),
        ),
        SizedBox(
          width: width * 0.0107296,
        ),
        Container(
          width: width * 0.0343347,
          height: height * 0.060465,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.r),
              color: const Color(0xffCFCFCF)),
        ),
        SizedBox(
          width: width * 0.0107296,
        ),
        Text(
          "-",
          style: TextStyle(
            fontFamily: "poppin",
            fontWeight: FontWeight.w600,
            fontSize: width * 0.01609,
            color: SharedColors.midGreenColor,
          ),
        ),
      ],
    );
  }
}
