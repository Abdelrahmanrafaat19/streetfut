import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/component/default_button.dart';
import 'package:fut/core/responsive_font.dart';
import 'package:fut/core/theme/colors.dart';

class EarnedPointsDialog extends StatelessWidget {
  const EarnedPointsDialog({super.key});

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
        height: width < 1000 ? height * 0.511627 : (height * 0.48511627) * 0.8,
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
                Column(
                  children: [
                    Image.asset(
                        'assetes/images/cookdoor.png', // Replace with your image URL
                        width: width < 1000
                            ? width * 0.07296
                            : (width * 0.07296) * (3 / 4),
                        height: width < 1000
                            ? height * 0.1279
                            : ((height * 0.1279) * (2 / 3))),
                    SizedBox(
                        height: width < 1000
                            ? height * 0.02325
                            : ((height * 0.02325) * (2 / 3))),
                    Text(
                      '30% Discounted, Doesn\'t Exceed\n60 EGP',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: width * 0.01394,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: height * 0.04651,
            ),
            SizedBox(
              width: width < 1000 ? width * 0.13197 : (width * 0.13197) * (0.8),
              height: width < 1000
                  ? height * 0.076744
                  : (height * 0.076744) * (0.7),
              child: defaultButton(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  text: "Redeem",
                  gradient: const LinearGradient(colors: [
                    Color(0xff9A8E14),
                    Color(0xff95A324),
                    Color(0xff90B834)
                  ]),
                  color: SharedColors.greenColor,
                  fontFamily: "poppin",
                  textcolor: SharedColors.whiteColor,
                  fontSize: getResponsiveFont(context, fontSize: 15),
                  raduis: 10.r),
            )
          ],
        ),
      ),
    );
  }
}
