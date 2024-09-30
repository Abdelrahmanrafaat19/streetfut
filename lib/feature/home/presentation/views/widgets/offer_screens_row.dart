import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/responsive_font.dart';
import 'package:fut/core/theme/colors.dart';

class OfferScreensRow extends StatefulWidget {
  const OfferScreensRow({super.key});

  @override
  State<OfferScreensRow> createState() => _OfferScreensRowState();
}

class _OfferScreensRowState extends State<OfferScreensRow> {
  final CarouselSliderController _carouselController =
      CarouselSliderController();
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Row(
      children: [
        Container(
          width: width * 0.2243,
          height: width < 950 ? height * 0.3186 : (height * 0.3186) * (2 / 3),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.r),
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assetes/images/offer.png"),
            ),
          ),
        ),
        SizedBox(
          width: width * 0.01073,
        ),
        Container(
          height: width < 950 ? height * 0.3186 : (height * 0.3186) * (2 / 3),
          width: width * 0.69206,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
          child: Stack(
            children: [
              CarouselSlider.builder(
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
                    width: width * 0.69206,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          "assetes/images/TEAM 2.png",
                        ),
                      ),
                    ),
                  );
                },
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: width * 0.01072),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        _carouselController.nextPage();
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: getResponsiveFont(context, fontSize: 30),
                        color: SharedColors.whiteColor,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _carouselController.previousPage();
                      },
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: getResponsiveFont(context, fontSize: 30),
                        color: SharedColors.whiteColor,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
