import 'package:flutter/material.dart';
import 'package:flutter_pannable_rating_bar/flutter_pannable_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/component/titel_container.dart';
import 'package:fut/core/theme/colors.dart';

class RefreeReviewContainer extends StatefulWidget {
  const RefreeReviewContainer({super.key});

  @override
  State<RefreeReviewContainer> createState() => _RefreeReviewContainerState();
}

class _RefreeReviewContainerState extends State<RefreeReviewContainer> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      width: width < 1000 ? width * 0.29184 : width * 0.29184,
      height: width < 1000 ? height * 0.362791 : (height * 0.362791) * (2 / 3),
      decoration: BoxDecoration(
        color: SharedColors.blackColor.withOpacity(0.7),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Column(
        children: [
          TitelContainer(
            title: "Review",
            width: width < 1000 ? width * 0.29184 : width * 0.29184,
          ),
          Container(
            height: width < 1000
                ? (height * 0.362791) - 51.h
                : ((height * 0.362791) * (2 / 3)) - 51.h,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PannableRatingBar(
                  rate: 2,
                  items: List.generate(
                      5,
                      (index) => RatingWidget(
                            selectedColor: SharedColors.yellowColor,
                            unSelectedColor: Colors.grey,
                            child: ImageIcon(
                              const AssetImage("assetes/images/rateing.png"),
                              size: 45.h,
                            ),
                          )),
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
                SizedBox(
                  height: height * 0.02325,
                ),
                Text(
                  "4.5",
                  style: TextStyle(
                    fontFamily: "poppin",
                    fontWeight: FontWeight.bold,
                    fontSize:
                        width > 1000 ? width * 0.023605 : width * 0.023605,
                    color: SharedColors.whiteColor,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
