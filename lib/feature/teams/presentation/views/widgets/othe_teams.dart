import 'package:flutter/material.dart';
import 'package:flutter_pannable_rating_bar/flutter_pannable_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/responsive_font.dart';
import 'package:fut/core/theme/colors.dart';

class OtheTeamsScreen extends StatefulWidget {
  const OtheTeamsScreen({super.key});

  @override
  State<OtheTeamsScreen> createState() => _OtheTeamsScreenState();
}

class _OtheTeamsScreenState extends State<OtheTeamsScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: double.infinity,
      height: width < 100 ? height * (3 / 4) : height * (3 / 4),
      child: ListView.builder(
          itemCount: 250,
          itemBuilder: (context, index) => Container(
                margin: EdgeInsets.symmetric(
                  horizontal: width * 0.23513,
                  vertical: 10,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Container(
                            width: width * 0.04828,
                            height: height * 0.10465,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        "assetes/images/club elhlawya-01.png"))),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Shabab Sharkawya${index + 1}",
                                style: TextStyle(
                                  fontFamily: "TimesNewRoman",
                                  fontWeight: FontWeight.w700,
                                  fontSize: width * 0.0171,
                                  color: SharedColors.whiteColor,
                                ),
                              ),
                              PannableRatingBar(
                                rate: 5,
                                items: List.generate(
                                    5,
                                    (index) => RatingWidget(
                                          selectedColor:
                                              SharedColors.greenColor,
                                          unSelectedColor: Colors.grey,
                                          child: Icon(
                                            Icons.star,
                                            size: width * 0.01809,
                                          ),
                                        )),
                                onChanged: (value) {
                                  setState(() {});
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: width * 0.04828,
                      height: height * 0.12860,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        border: Border.all(
                          color: SharedColors.whiteColor,
                        ),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              width: width * 0.04828,
                              height: height * 0.0604,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: SharedColors.whiteColor,
                                ),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15.r),
                                  topRight: Radius.circular(15.r),
                                ),
                              ),
                              child: Text(
                                "4",
                                style: TextStyle(
                                    color: SharedColors.whiteColor,
                                    fontFamily: "TimesNewRoman",
                                    fontWeight: FontWeight.w700,
                                    fontSize: getResponsiveFont(context,
                                        fontSize: 20)),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              width: width * 0.04828,
                              height: height * 0.0604,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: SharedColors.whiteColor,
                                ),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(15.r),
                                  bottomRight: Radius.circular(15.r),
                                ),
                              ),
                              child: Text(
                                "4",
                                style: TextStyle(
                                    color: SharedColors.whiteColor,
                                    fontFamily: "TimesNewRoman",
                                    fontWeight: FontWeight.w700,
                                    fontSize: getResponsiveFont(context,
                                        fontSize: 20)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )),
    );
  }
}
