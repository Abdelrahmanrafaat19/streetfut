import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fut/core/responsive_font.dart';
import 'package:fut/core/theme/colors.dart';

class NewsTeamsRow extends StatefulWidget {
  const NewsTeamsRow({super.key});

  @override
  State<NewsTeamsRow> createState() => _NewsTeamsRowState();
}

class _NewsTeamsRowState extends State<NewsTeamsRow> {
  final CarouselSliderController _carouselController =
      CarouselSliderController();
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Row(
      children: [
        Container(
          height: width < 950 ? height * 0.76744 : (height * 0.76744) * (2 / 3),
          width: width * 0.5879,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.r)),
          child: Stack(
            children: [
              CarouselSlider.builder(
                carouselController: _carouselController,
                options: CarouselOptions(
                  height: height * 0.76744,
                  autoPlay: false,
                  enlargeCenterPage: false,
                  viewportFraction: 1,
                  aspectRatio: 3.0,
                  initialPage: 2,
                ),
                itemCount: 3,
                itemBuilder: (context, index, realIndex) {
                  return Container(
                    padding: EdgeInsets.only(
                      bottom: width < 950
                          ? height * 0.130232
                          : (height * 0.130232) * (2 / 3),
                    ),
                    alignment: Alignment.bottomRight,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          "assetes/images/team5omasi.jpg",
                        ),
                      ),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      width: width * 0.39914,
                      height: width < 450
                          ? height * 0.10465
                          : (height * 0.10465) * (2 / 3),
                      decoration: BoxDecoration(
                        color: const Color(0xff252525).withOpacity(0.8),
                      ),
                      child: Text(
                        "فريق البكابورتات يأخذ فريق الحريفة خلف مصنع الكراسي",
                        style: TextStyle(
                          color: SharedColors.whiteColor,
                          fontFamily: "poppin",
                          fontSize: width * 0.01609,
                          fontWeight: FontWeight.w600,
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
        ),
        SizedBox(
          width: width * 0.01073,
        ),
        SizedBox(
          height: width < 950 ? height * 0.76744 : (height * 0.76744) * (2 / 3),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: width * 0.321888,
                height: width < 950
                    ? height * 0.38372
                    : (height * 0.38372) * (2 / 3),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assetes/images/topfutTeams.png"))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assetes/svg/GoldMedal.svg",
                          width: width * 0.0321888,
                          height: width < 950
                              ? height * 0.086047
                              : (height * 0.086047) * (2 / 3),
                        ),
                        Text(
                          "Bakbortat",
                          style: TextStyle(
                            fontFamily: "poppin",
                            fontWeight: FontWeight.w500,
                            fontSize: width * 0.01502,
                            color: SharedColors.whiteColor,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 8,
                        ),
                        SvgPicture.asset(
                          "assetes/svg/secMedal.svg",
                          width: width * 0.0321888,
                          height: width < 950
                              ? height * 0.086047
                              : (height * 0.086047) * (2 / 3),
                        ),
                        Text(
                          "Bakbortat",
                          style: TextStyle(
                            fontFamily: "poppin",
                            fontWeight: FontWeight.w500,
                            fontSize: width * 0.01502,
                            color: SharedColors.whiteColor,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 8,
                        ),
                        SvgPicture.asset(
                          "assetes/svg/pronzMedal.svg",
                          width: width * 0.0321888,
                          height: width < 950
                              ? height * 0.086047
                              : (height * 0.086047) * (2 / 3),
                        ),
                        Text(
                          "Bakbortat",
                          style: TextStyle(
                            fontFamily: "poppin",
                            fontWeight: FontWeight.w500,
                            fontSize: width * 0.01502,
                            color: SharedColors.whiteColor,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: width < 950
                    ? height * 0.01860
                    : (height * 0.01860) * (2 / 3),
              ),
              Container(
                width: width * 0.321888,
                height: width < 950
                    ? height * 0.36279
                    : (height * 0.36279) * (2 / 3),
                decoration: BoxDecoration(
                  color: const Color(0xff363535),
                  borderRadius: BorderRadius.circular(5.r),
                ),
                child: Table(
                  /* defaultVerticalAlignment:
                      TableCellVerticalAlignment.intrinsicHeight, */
                  defaultVerticalAlignment: TableCellVerticalAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  columnWidths: const {
                    0: FlexColumnWidth(3),
                  },
                  children: [
                    TableRow(
                      children: [
                        SizedBox(
                          height: width < 950
                              ? height * 0.06651
                              : (height * 0.06651) * (2 / 3),
                          child: Text(
                            "FutStreet",
                            style: TextStyle(
                              fontFamily: "poppin",
                              fontWeight: FontWeight.w500,
                              fontSize: width * 0.013948,
                              color: SharedColors.whiteColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: width < 950
                              ? height * 0.06651
                              : (height * 0.06651) * (2 / 3),
                          child: Text(
                            "MP",
                            style: TextStyle(
                              fontFamily: "poppin",
                              fontWeight: FontWeight.w600,
                              fontSize: width * 0.0104378,
                              color: const Color(0xffAEAEAE),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: width < 950
                              ? height * 0.06651
                              : (height * 0.06651) * (2 / 3),
                          child: Text(
                            "W",
                            style: TextStyle(
                              fontFamily: "poppin",
                              fontWeight: FontWeight.w600,
                              fontSize: width * 0.0104378,
                              color: const Color(0xffAEAEAE),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: width < 950
                              ? height * 0.06651
                              : (height * 0.06651) * (2 / 3),
                          child: Text(
                            "D",
                            style: TextStyle(
                              fontFamily: "poppin",
                              fontWeight: FontWeight.w600,
                              fontSize: width * 0.0104378,
                              color: const Color(0xffAEAEAE),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: width < 950
                              ? height * 0.06651
                              : (height * 0.06651) * (2 / 3),
                          child: Text(
                            "L",
                            style: TextStyle(
                              fontFamily: "poppin",
                              fontWeight: FontWeight.w600,
                              fontSize: width * 0.0104378,
                              color: const Color(0xffAEAEAE),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: width < 950
                              ? height * 0.06651
                              : (height * 0.06651) * (2 / 3),
                          child: Text(
                            "PTS",
                            style: TextStyle(
                              fontFamily: "poppin",
                              fontWeight: FontWeight.w600,
                              fontSize: width * 0.0104378,
                              color: const Color(0xffAEAEAE),
                            ),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom:
                              BorderSide(color: Color(0xff525151), width: 2),
                        ),
                      ),
                      children: [
                        SizedBox(
                          height: width < 950
                              ? height * 0.06651
                              : (height * 0.06651) * (2 / 3),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Image(
                                  width: 10,
                                  height: 13,
                                  image:
                                      AssetImage("assetes/images/team a.png")),
                              Text(
                                " Elahlawya",
                                style: TextStyle(
                                  fontFamily: "poppin",
                                  fontWeight: FontWeight.w600,
                                  fontSize: width * 0.0104378,
                                  color: SharedColors.whiteColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: width < 950
                              ? height * 0.06651
                              : (height * 0.06651) * (2 / 3),
                          child: Text(
                            "34",
                            style: TextStyle(
                              fontFamily: "poppin",
                              fontWeight: FontWeight.w600,
                              fontSize: width * 0.0104378,
                              color: SharedColors.whiteColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: width < 950
                              ? height * 0.06651
                              : (height * 0.06651) * (2 / 3),
                          child: Text(
                            "27",
                            style: TextStyle(
                              fontFamily: "poppin",
                              fontWeight: FontWeight.w600,
                              fontSize: width * 0.0104378,
                              color: SharedColors.whiteColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: width < 950
                              ? height * 0.06651
                              : (height * 0.06651) * (2 / 3),
                          child: Text(
                            "43",
                            style: TextStyle(
                              fontFamily: "poppin",
                              fontWeight: FontWeight.w600,
                              fontSize: width * 0.0104378,
                              color: SharedColors.whiteColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: width < 950
                              ? height * 0.06651
                              : (height * 0.06651) * (2 / 3),
                          child: Text(
                            "6",
                            style: TextStyle(
                              fontFamily: "poppin",
                              fontWeight: FontWeight.w600,
                              fontSize: width * 0.0104378,
                              color: SharedColors.whiteColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: width < 950
                              ? height * 0.06651
                              : (height * 0.06651) * (2 / 3),
                          child: Text(
                            "85",
                            style: TextStyle(
                              fontFamily: "poppin",
                              fontWeight: FontWeight.w600,
                              fontSize: width * 0.0104378,
                              color: SharedColors.whiteColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom:
                              BorderSide(color: Color(0xff525151), width: 2),
                        ),
                      ),
                      children: [
                        SizedBox(
                          height: width < 950
                              ? height * 0.06651
                              : (height * 0.06651) * (2 / 3),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Image(
                                  width: 10,
                                  height: 13,
                                  image:
                                      AssetImage("assetes/images/team a.png")),
                              Text(
                                " Elahlawya",
                                style: TextStyle(
                                  fontFamily: "poppin",
                                  fontWeight: FontWeight.w600,
                                  fontSize: width * 0.0104378,
                                  color: SharedColors.whiteColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: width < 950
                              ? height * 0.06651
                              : (height * 0.06651) * (2 / 3),
                          child: Text(
                            "34",
                            style: TextStyle(
                              fontFamily: "poppin",
                              fontWeight: FontWeight.w600,
                              fontSize: width * 0.0104378,
                              color: SharedColors.whiteColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: width < 950
                              ? height * 0.06651
                              : (height * 0.06651) * (2 / 3),
                          child: Text(
                            "27",
                            style: TextStyle(
                              fontFamily: "poppin",
                              fontWeight: FontWeight.w600,
                              fontSize: width * 0.0104378,
                              color: SharedColors.whiteColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: width < 950
                              ? height * 0.06651
                              : (height * 0.06651) * (2 / 3),
                          child: Text(
                            "43",
                            style: TextStyle(
                              fontFamily: "poppin",
                              fontWeight: FontWeight.w600,
                              fontSize: width * 0.0104378,
                              color: SharedColors.whiteColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: width < 950
                              ? height * 0.06651
                              : (height * 0.06651) * (2 / 3),
                          child: Text(
                            "6",
                            style: TextStyle(
                              fontFamily: "poppin",
                              fontWeight: FontWeight.w600,
                              fontSize: width * 0.0104378,
                              color: SharedColors.whiteColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: width < 950
                              ? height * 0.06651
                              : (height * 0.06651) * (2 / 3),
                          child: Text(
                            "85",
                            style: TextStyle(
                              fontFamily: "poppin",
                              fontWeight: FontWeight.w600,
                              fontSize: width * 0.0104378,
                              color: SharedColors.whiteColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom:
                              BorderSide(color: Color(0xff525151), width: 2),
                        ),
                      ),
                      children: [
                        SizedBox(
                          height: width < 950
                              ? height * 0.06651
                              : (height * 0.06651) * (2 / 3),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Image(
                                  width: 10,
                                  height: 13,
                                  image:
                                      AssetImage("assetes/images/team a.png")),
                              Text(
                                " Elahlawya",
                                style: TextStyle(
                                  fontFamily: "poppin",
                                  fontWeight: FontWeight.w600,
                                  fontSize: width * 0.0104378,
                                  color: SharedColors.whiteColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: width < 950
                              ? height * 0.06651
                              : (height * 0.06651) * (2 / 3),
                          child: Text(
                            "34",
                            style: TextStyle(
                              fontFamily: "poppin",
                              fontWeight: FontWeight.w600,
                              fontSize: width * 0.0104378,
                              color: SharedColors.whiteColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: width < 950
                              ? height * 0.06651
                              : (height * 0.06651) * (2 / 3),
                          child: Text(
                            "27",
                            style: TextStyle(
                              fontFamily: "poppin",
                              fontWeight: FontWeight.w600,
                              fontSize: width * 0.0104378,
                              color: SharedColors.whiteColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: width < 950
                              ? height * 0.06651
                              : (height * 0.06651) * (2 / 3),
                          child: Text(
                            "43",
                            style: TextStyle(
                              fontFamily: "poppin",
                              fontWeight: FontWeight.w600,
                              fontSize: width * 0.0104378,
                              color: SharedColors.whiteColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: width < 950
                              ? height * 0.06651
                              : (height * 0.06651) * (2 / 3),
                          child: Text(
                            "6",
                            style: TextStyle(
                              fontFamily: "poppin",
                              fontWeight: FontWeight.w600,
                              fontSize: width * 0.0104378,
                              color: SharedColors.whiteColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: width < 950
                              ? height * 0.06651
                              : (height * 0.06651) * (2 / 3),
                          child: Text(
                            "85",
                            style: TextStyle(
                              fontFamily: "poppin",
                              fontWeight: FontWeight.w600,
                              fontSize: width * 0.0104378,
                              color: SharedColors.whiteColor,
                            ),
                          ),
                        ),
                      ],
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
