import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pannable_rating_bar/flutter_pannable_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/responsive_font.dart';
import 'package:fut/core/theme/colors.dart';

class MatchesAndSocialRow extends StatefulWidget {
  const MatchesAndSocialRow({super.key});

  @override
  State<MatchesAndSocialRow> createState() => _MatchesAndSocialRowState();
}

class _MatchesAndSocialRowState extends State<MatchesAndSocialRow> {
  final CarouselSliderController _carouselController =
      CarouselSliderController();
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Row(
      children: [
        Container(
          height:
              width < 1000 ? height * 0.41861 : (height * 0.41861) * (2 / 3),
          width: width * 0.5879,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
          child: Stack(
            children: [
              CarouselSlider.builder(
                carouselController: _carouselController,
                options: CarouselOptions(
                  height: height * 0.41861,
                  autoPlay: false,
                  enlargeCenterPage: false,
                  viewportFraction: 1,
                  aspectRatio: 3.0,
                  initialPage: 2,
                ),
                itemCount: 3,
                itemBuilder: (context, index, realIndex) {
                  return Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          "assetes/images/Match widget.png",
                        ),
                      ),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Bakbortat",
                                style: TextStyle(
                                  fontSize: width * 0.02145,
                                  fontFamily: "poppin",
                                  fontWeight: FontWeight.bold,
                                  color: SharedColors.whiteColor,
                                ),
                              ),
                              SizedBox(
                                width: width * 0.05901,
                              ),
                              Text(
                                "Next Match",
                                style: TextStyle(
                                  fontSize: width * 0.019313,
                                  fontFamily: "poppin",
                                  fontWeight: FontWeight.bold,
                                  color: SharedColors.whiteColor,
                                ),
                              ),
                              SizedBox(
                                width: width * 0.05901,
                              ),
                              Text(
                                "Bakbortat",
                                style: TextStyle(
                                  fontSize: width * 0.02145,
                                  fontFamily: "poppin",
                                  fontWeight: FontWeight.bold,
                                  color: SharedColors.whiteColor,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: width < 1000
                                ? height * 0.01860
                                : (height * 0.01860) * (2 / 3),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(right: width < 1000 ? 40 : 0.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: height * 0.15581,
                                  child: Stack(
                                    children: [
                                      SizedBox(
                                        width: width < 1000
                                            ? width * 0.16095 * 1.4
                                            : width * 0.16095 * 1.3,
                                        height: height * 0.06465 * 2,
                                        child: Stack(
                                          children: [
                                            /*  Positioned.fill(
                                              left: 20,
                                              child: SvgPicture.asset(
                                                  "assetes/svg/teamSc.svg"),
                                            ), */
                                            Positioned(
                                              left: width < 1000
                                                  ? width * 0.04756
                                                  : (width * 0.03755) * 1.6,
                                              top: width < 1000
                                                  ? height * 0.02218
                                                  : (height * 0.02218) * 2,
                                              child: CustomPaint(
                                                size: Size(
                                                    width < 1000 ? 90 : 155,
                                                    width < 1000 ? 30 : 44),
                                                painter: width < 950
                                                    ? RPSCustomPainterRISmall()
                                                    : RPSCustomPainterRi(),
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal:
                                                          width * 0.02075),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      PannableRatingBar(
                                                        rate: 3,
                                                        items: List.generate(
                                                            5,
                                                            (index) =>
                                                                RatingWidget(
                                                                  selectedColor:
                                                                      SharedColors
                                                                          .greenColor,
                                                                  unSelectedColor:
                                                                      Colors
                                                                          .grey,
                                                                  child: Icon(
                                                                    Icons.star,
                                                                    size: width >
                                                                            950
                                                                        ? width *
                                                                            0.01218
                                                                        : (width *
                                                                                0.01118) *
                                                                            1.5,
                                                                  ),
                                                                )),
                                                        onChanged: (value) {
                                                          setState(() {});
                                                        },
                                                      ),
                                                      // SizedBox(
                                                      //   height: height * 0.02326,
                                                      // ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          const SizedBox(
                                                            height: 20,
                                                          ),
                                                          Text(
                                                            "OVR",
                                                            style: TextStyle(
                                                              color: SharedColors
                                                                  .whiteColor,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              fontSize: width < 1000
                                                                  ? (width *
                                                                          0.01109) *
                                                                      1.5
                                                                  : width *
                                                                      0.01109,
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width:
                                                                width * 0.02072,
                                                          ),
                                                          Text(
                                                            "80%",
                                                            style: TextStyle(
                                                              color: SharedColors
                                                                  .whiteColor,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: width < 1000
                                                                  ? (width *
                                                                          0.01109) *
                                                                      1.2
                                                                  : width *
                                                                      0.01109,
                                                            ),
                                                          ),
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                        left: width < 1000
                                            ? width * 0.1551
                                            : width * 0.1481,
                                        child: Container(
                                          width: width > 950
                                              ? width * 0.06081
                                              : (width * 0.06081) / 1.2,
                                          height: height * 0.15581,
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "assetes/images/team a.png"))),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: width > 1000 ? 10 : 0.0,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  width: width * 0.1255,
                                  height: width < 1000
                                      ? height * 0.0652
                                      : (height * 0.0652) * (2 / 3),
                                  decoration: BoxDecoration(
                                    color: SharedColors.greenColor,
                                    borderRadius: BorderRadius.circular(
                                      10.r,
                                    ),
                                  ),
                                  child: Text(
                                    "10:00",
                                    style: TextStyle(
                                      fontSize: width * 0.02145,
                                      fontFamily: "poppin",
                                      fontWeight: FontWeight.bold,
                                      color: SharedColors.whiteColor,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                SizedBox(
                                  height: height * 0.15581,
                                  child: Stack(
                                    children: [
                                      SizedBox(
                                        width: width < 1000
                                            ? width * 0.16095
                                            : width * 0.16095 * 1.3,
                                        height: height * 0.06465 * 2,
                                        child: Stack(
                                          children: [
                                            /*  Positioned.fill(
                                              left: 20,
                                              child: SvgPicture.asset(
                                                  "assetes/svg/teamSc.svg"),
                                            ), */
                                            Positioned(
                                              right: width < 1000
                                                  ? 0.0
                                                  : (width * 0.03755) * 1.3,
                                              top: width < 1000
                                                  ? height * 0.02218
                                                  : (height * 0.02218) * 2,
                                              child: CustomPaint(
                                                size: Size(
                                                    width < 1000 ? 90 : 155,
                                                    width < 1000 ? 30 : 44),
                                                painter: width > 950
                                                    ? RPSCustomPainter()
                                                    : RPSCustomPainterLESmall(),
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal:
                                                          width * 0.02075),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      PannableRatingBar(
                                                        rate: 3,
                                                        items: List.generate(
                                                            5,
                                                            (index) =>
                                                                RatingWidget(
                                                                  selectedColor:
                                                                      SharedColors
                                                                          .greenColor,
                                                                  unSelectedColor:
                                                                      Colors
                                                                          .grey,
                                                                  child: Icon(
                                                                    Icons.star,
                                                                    size: width >
                                                                            950
                                                                        ? width *
                                                                            0.01218
                                                                        : (width *
                                                                                0.01118) *
                                                                            1.5,
                                                                  ),
                                                                )),
                                                        onChanged: (value) {
                                                          setState(() {});
                                                        },
                                                      ),
                                                      // SizedBox(
                                                      //   height: height * 0.02326,
                                                      // ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          const SizedBox(
                                                            height: 20,
                                                          ),
                                                          Text(
                                                            "OVR",
                                                            style: TextStyle(
                                                              color: SharedColors
                                                                  .whiteColor,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              fontSize: width < 1000
                                                                  ? (width *
                                                                          0.01109) *
                                                                      1.5
                                                                  : width *
                                                                      0.01109,
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width:
                                                                width * 0.02072,
                                                          ),
                                                          Text(
                                                            "80%",
                                                            style: TextStyle(
                                                              color: SharedColors
                                                                  .whiteColor,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: width < 1000
                                                                  ? (width *
                                                                          0.01109) *
                                                                      1.2
                                                                  : width *
                                                                      0.01109,
                                                            ),
                                                          ),
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                        child: Container(
                                          width: width > 950
                                              ? width * 0.06081
                                              : (width * 0.06081) / 1.2,
                                          height: height * 0.15581,
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "assetes/images/team a.png"))),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
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
        ),
        SizedBox(
          width: width * 0.01073,
        ),
        Container(
          width: width * 0.3197,
          height:
              width < 1000 ? height * 0.41861 : (height * 0.41861) * (2 / 3),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.r),
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assetes/images/et.jpg"),
            ),
          ),
        ),
      ],
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(0.665039, 0.863159);
    path_0.lineTo(150, 0.863159);
    path_0.lineTo(141.766, 22.3867);
    path_0.lineTo(0.665039, 22.3867);
    path_0.lineTo(0.665039, 0.863159);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = Colors.white.withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(0.665039, 22.3867);
    path_1.lineTo(141.755, 22.3867);
    path_1.lineTo(133.973, 43.9103);
    path_1.lineTo(0.665039, 43.9103);
    path_1.lineTo(0.665039, 22.3867);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xff313131).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class RPSCustomPainterRi extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(154.907, 0.467407);
    path_0.lineTo(7.62939, 0.467407);
    path_0.lineTo(-5, 0.467407);
    path_0.lineTo(8.54146, 22.7941);
    path_0.lineTo(154.907, 22.7941);
    path_0.lineTo(154.907, 0.467407);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = Colors.white.withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(154.907, 22.7941);
    path_1.lineTo(8.55292, 22.7941);
    path_1.lineTo(16.6249, 45.1208);
    path_1.lineTo(154.907, 45.1208);
    path_1.lineTo(154.907, 22.7941);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xff313131).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class RPSCustomPainterRISmall extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(100, 0.467407);
    path_0.lineTo(2.02989, 0.467407);
    path_0.lineTo(-6, 0.467407);
    path_0.lineTo(5.51388, 15.4674);
    path_0.lineTo(100, 15.4674);
    path_0.lineTo(100, 0.467407);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = Colors.white.withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(100, 15.4674);
    path_1.lineTo(5.52126, 15.4674);
    path_1.lineTo(10.7321, 30.4674);
    path_1.lineTo(100, 30.4674);
    path_1.lineTo(100, 15.4674);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xff313131).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class RPSCustomPainterLESmall extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(0.665039, 0.863159);
    path_0.lineTo(100.665, 0.863159);
    path_0.lineTo(95.1512, 15.8632);
    path_0.lineTo(0.665039, 15.8632);
    path_0.lineTo(0.665039, 0.863159);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = Colors.white.withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(0.665039, 15.8632);
    path_1.lineTo(95.1438, 15.8632);
    path_1.lineTo(89.9329, 30.8632);
    path_1.lineTo(0.665039, 30.8632);
    path_1.lineTo(0.665039, 15.8632);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xff313131).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
