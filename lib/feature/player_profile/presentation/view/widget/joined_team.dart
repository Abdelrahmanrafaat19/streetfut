import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/component/titel_container.dart';

import '../../../../../core/theme/colors.dart';

class JoinedTeam extends StatefulWidget {
  const JoinedTeam({super.key});

  @override
  State<JoinedTeam> createState() => _JoinedTeamState();
}

class _JoinedTeamState extends State<JoinedTeam> {
  final CarouselSliderController _carouselController =
      CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      width: width < 1000 ? width * 0.2081545 : width * 0.2081545,
      height: width < 1000 ? height * 0.362791 : (height * 0.362791) * (2 / 3),
      decoration: BoxDecoration(
          color: SharedColors.blackColor.withOpacity(0.7),
          borderRadius: BorderRadius.circular(20.r)),
      child: Column(
        children: [
          TitelContainer(
            title: "Joined Teams",
            width: width < 1000 ? width * 0.2081545 : width * 0.2081545,
          ),
          Container(
            height: width < 1000
                ? (height * 0.362791) - 51.h
                : ((height * 0.362791) * (2 / 3)) - 51.h,
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => setState(() {
                    _carouselController.nextPage();
                  }),
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: SharedColors.whiteColor,
                    size: height * 0.031395,
                  ),
                ),
                SizedBox(
                  width: width < 1000 ? width * 0.13776 : width * 0.143776,
                  height: width < 1000
                      ? (height * 0.362791) - 51.h
                      : ((height * 0.362791) * (2 / 3)) - 51.h,
                  child: CarouselSlider.builder(
                    carouselController: _carouselController,
                    options: CarouselOptions(
                      height: height * 0.3186,
                      autoPlay: false,
                      enlargeCenterPage: false,
                      viewportFraction: 1,
                      aspectRatio: 3.0,
                      initialPage: 2,
                    ),
                    itemCount: 3,
                    itemBuilder: (context, index, realIndex) {
                      return Container(
                        height: height * 0.3186,
                        width:
                            width < 1000 ? width * 0.13776 : width * 0.143776,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: const DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              "assetes/images/at.png",
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                GestureDetector(
                  onTap: () => setState(() {
                    _carouselController.previousPage();
                  }),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: SharedColors.whiteColor,
                    size: height * 0.031395,
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
