import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fut/core/theme/colors.dart';

class TabsPlayMode extends StatefulWidget {
  final String iconPath, imagePath, name;
  const TabsPlayMode(
      {super.key,
      required this.iconPath,
      required this.imagePath,
      required this.name});

  @override
  State<TabsPlayMode> createState() => _TabsPlayModeState();
}

class _TabsPlayModeState extends State<TabsPlayMode> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.only(top: height * 0.01627, left: 10, right: 10),
      width: width < 1000 ? width * 0.2510 : (width * 0.2510),
      height: width < 1000 ? height * 0.27674 : (height * 0.27674),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(widget.imagePath),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal:
                  width < 1000 ? width * 0.007510 : (width * 0.007510) / 2,
              vertical:
                  width < 1000 ? height * 0.01162 : (height * 0.01162) / 2,
            ),
            width: width < 1000 ? width * 0.046139 : (width * 0.046138),
            height: width < 1000 ? height * 0.093023 : (height * 0.093023),
            decoration: BoxDecoration(
              color: SharedColors.whiteColor,
              borderRadius: BorderRadius.circular(15.r),
            ),
            child: SvgPicture.asset(
              widget.iconPath,
              color: SharedColors.greenColor,
            ),
          ),
          SizedBox(
            height: height * 0.06000,
          ),
          SizedBox(
            width: width < 1000 ? width * 0.2510 : (width * 0.2510),
            child: Text(
              widget.name,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: SharedColors.whiteColor,
                fontFamily: "poppin",
                fontSize: width < 1000 ? width * 0.02145 : (width * 0.02145),
                fontWeight: FontWeight.w600,
              ),
            ),
          )
        ],
      ),
    );
  }
}
