import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/component/titel_container.dart';
import 'package:fut/core/theme/colors.dart';

class TeamMenu extends StatefulWidget {
  final List<String> playerMenus;
  const TeamMenu({super.key, required this.playerMenus});

  @override
  State<TeamMenu> createState() => _TeamMenuState();
}

class _TeamMenuState extends State<TeamMenu> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Container(
      width: width < 1000 ? width * 0.1824034 : width * 0.1824034,
      // height: width < 1000 ? height * 0.418605 : (height * 0.418605) * (2 / 3),
      decoration: BoxDecoration(
        color: SharedColors.blackColor.withOpacity(0.7),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitelContainer(
            alignment: Alignment.center,
            title: "Substitutes",
            width: width < 1000 ? width * 0.29184 : width * 0.29184,
          ),
          for (int i = 0; i < 5; i++)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              child: Text(
                widget.playerMenus[i],
                style: TextStyle(
                  color: SharedColors.whiteColor,
                  fontFamily: "poppin",
                  fontSize: width * 0.013948,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
        ],
      ),
    );
  }
}
