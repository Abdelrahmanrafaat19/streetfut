import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/theme/colors.dart';
import 'package:fut/feature/notification/presentation/views/widgets/button_row.dart';
import 'package:gradient_borders/gradient_borders.dart';

class NotificationBody extends StatefulWidget {
  const NotificationBody({super.key});

  @override
  State<NotificationBody> createState() => _NotificationBodyState();
}

class _NotificationBodyState extends State<NotificationBody> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      width: double.infinity,
      height: width < 1000 ? height * 0.8 : height * 0.87,
      margin: EdgeInsets.symmetric(horizontal: width * 0.042918),
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Container(
              height:
                  width < 1000 ? height * 0.19 : (height * 0.181395) * (2 / 3),
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: width * 0.018240),
              margin: EdgeInsets.only(
                  top: width < 1000
                      ? height * 0.034883
                      : (height * 0.034883) * (2 / 3)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                color: const Color(0xff3D3F41).withOpacity(0.5),
                border: const GradientBoxBorder(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff9A8E14),
                      Color(0xff95A324),
                      Color(0xff90B834),
                    ],
                  ),
                  width: 1,
                ),
              ),
              child: Row(
                children: [
                  Image(
                    image: AssetImage(
                      index == 0
                          ? "assetes/images/refnotification.png"
                          : index == 1
                              ? "assetes/images/at.png"
                              : "assetes/images/ch.png",
                    ),
                    width: width * 0.034334,
                    height: height * 0.09535,
                  ),
                  /*  Container(
                    width: width * 0.05,
                    height: height * 0.07,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: 
                      ),
                    ),
                  ), */
                  SizedBox(
                    width: width * 0.014678,
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      "Refereeing match between Smouha and Enppi on Wednesday, December 30, in Shubra area, Al-Ahlam Stadium.",
                      style: TextStyle(
                        color: SharedColors.whiteColor,
                        fontFamily: "poppin",
                        fontSize: width < 1000
                            ? width * 0.016613
                            : (width * 0.019313) * (2 / 3),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.014678,
                  ),
                  index == 0
                      ? ButtonRow(
                          acceptedText: "Approve",
                          acceptedMethod: () {},
                          unAcceptedText: "Decline",
                          unAcceptedMethod: () {},
                        )
                      : index == 1
                          ? ButtonRow(
                              acceptedText: "Ready",
                              acceptedMethod: () {},
                              unAcceptedText: "UnReady",
                              unAcceptedMethod: () {},
                            )
                          : const SizedBox(),
                ],
              ));
        },
      ),
    );
  }
}
