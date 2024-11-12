import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fut/core/theme/colors.dart';

class ColumnDataInStatisticContainer extends StatelessWidget {
  final String path, name;
  final int count;
  const ColumnDataInStatisticContainer(
      {super.key, required this.path, required this.name, required this.count});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SvgPicture.asset(
          path,
          color: SharedColors.greenColor,
          width: width * 0.030386,
          height: height * 0.065813,
        ),
        Text(
          count.toString(),
          style: TextStyle(
              fontFamily: "poppin",
              fontSize:
                  width < 1000 ? width * 0.016094 : (width * 0.016094) * 0.75,
              color: SharedColors.whiteColor,
              fontWeight: FontWeight.w600),
        ),
        Text(
          name,
          style: TextStyle(
              fontFamily: "poppin",
              fontSize:
                  width < 1000 ? width * 0.01502 : (width * 0.01502) * 0.75,
              color: SharedColors.whiteColor,
              fontWeight: FontWeight.normal),
        ),
      ],
    );
  }
}
