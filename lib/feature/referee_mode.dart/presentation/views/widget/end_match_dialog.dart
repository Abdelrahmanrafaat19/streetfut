import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/component/default_button.dart';
import 'package:fut/core/responsive_font.dart';
import 'package:fut/core/theme/colors.dart';
import 'package:fut/feature/matches/presentation/view/matches_ended_screen.dart';

class EndMatchDialog extends StatelessWidget {
  const EndMatchDialog({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Container(
        width: width < 1000 ? width * 0.321888 : (width * 0.321888) * (0.8),
        height: width < 1000 ? height * 0.421627 : (height * 0.38511627) * 0.8,
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              children: [
                const Align(
                  alignment: Alignment.topRight,
                  child: Icon(Icons.close),
                ),
                SizedBox(
                  height: height * 0.02651,
                ),
                Text(
                  'Are You Sure that You Want to End the Match ?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: width * 0.01394,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.04651,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: width < 1000
                      ? width * 0.13197
                      : (width * 0.13197) * (0.8),
                  height: width < 1000
                      ? height * 0.076744
                      : (height * 0.076744) * (0.7),
                  child: defaultButton(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      text: "Discard",
                      color: SharedColors.redColor,
                      fontFamily: "poppin",
                      textcolor: SharedColors.whiteColor,
                      fontSize: getResponsiveFont(context, fontSize: 15),
                      raduis: 10.r),
                ),
                SizedBox(
                  width: width < 1000
                      ? width * 0.13197
                      : (width * 0.13197) * (0.8),
                  height: width < 1000
                      ? height * 0.076744
                      : (height * 0.076744) * (0.7),
                  child: defaultButton(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const MatchesEndedScreen(),
                        ));
                      },
                      text: "End Match",
                      color: SharedColors.blackColor,
                      fontFamily: "poppin",
                      textcolor: SharedColors.whiteColor,
                      fontSize: getResponsiveFont(context, fontSize: 15),
                      raduis: 10.r),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
