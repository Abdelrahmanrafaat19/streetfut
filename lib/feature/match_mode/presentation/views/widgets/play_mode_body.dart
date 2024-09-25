import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/get_width_height_method.dart';
import 'package:fut/core/theme/colors.dart';
import 'package:fut/feature/pitches/presentation/views/pitches.dart';
import 'package:page_transition/page_transition.dart';

class PlayModeBody extends StatelessWidget {
  PlayModeBody({super.key});
  final List image = [
    "assetes/images/soccerball.png",
    "assetes/images/Star.png",
    "assetes/images/shake-hands 1.png",
    "assetes/images/Trophy.png",
  ];

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assetes/images/background.png"))),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 185.h,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assetes/images/Play now 1.png"))),
            ),
            SizedBox(
              width: width * getWidth(context, 440),
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: image.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(PageTransition(
                          child: const PitchesScreens(),
                          alignment: Alignment.center,
                          type: PageTransitionType.leftToRightWithFade,
                          duration: const Duration(seconds: 2)));
                    },
                    child: Container(
                        margin: EdgeInsets.symmetric(
                            vertical: height * getHeight(context, 7)),
                        padding: EdgeInsets.symmetric(
                            horizontal: width * getWidth(context, 14)),
                        alignment: Alignment.center,
                        width: width * getWidth(context, 440),
                        height: height * getHeight(context, 70),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            color: const Color(0xffD9D9D9).withOpacity(0.4)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: SharedColors.whiteColor,
                                  borderRadius: BorderRadius.circular(20.r)),
                              child: ImageIcon(
                                AssetImage(image[index]),
                                color: SharedColors.greenColor,
                                size: width * getWidth(context, 30),
                              ),
                            ),
                            SizedBox(
                              width: width * getWidth(context, 10),
                            ),
                            Text(
                              'Pitch Booking',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'TimesNewRoman',
                                color: Colors.white,
                                fontSize: width * getWidth(context, 20),
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Spacer(),
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: SharedColors.whiteColor,
                              size: width * getWidth(context, 30),
                            ),
                          ],
                        )),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
