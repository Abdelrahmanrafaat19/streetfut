import 'package:flutter/material.dart';
import 'package:flutter_pannable_rating_bar/flutter_pannable_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/component/area_field.dart';
import 'package:fut/core/responsive_font.dart';
import 'package:fut/core/theme/colors.dart';
import 'package:fut/feature/pitches/presentation/views/widgets/search_field.dart';

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
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        const SearchField(
          hint: "Search by team ID",
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustamDropDwonField(
              data: ["Naser_city", "New_cairo"],
              text: "Area",
            ),
            SizedBox(
              width: width * 0.02896,
            ),
            const CustamDropDwonField(
              data: ["Naser_city", "New_cairo"],
              text: "Sort By",
            ),
          ],
        ),
        SizedBox(
          width: double.infinity,
          height: width < 1000 ? height * 0.35 : height * 0.6,
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
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          alignment: Alignment.center,
                          // width: width * 0.14592,
                          height: width < 1000
                              ? height * 0.09302
                              : (height * 0.09302) * (2 / 3),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Text(
                            "Request To Join",
                            style: TextStyle(
                              color: SharedColors.whiteColor,
                              fontFamily: "poppin",
                              fontWeight: FontWeight.bold,
                              fontSize: width < 1000
                                  ? width * 0.021459
                                  : (width * 0.021459) * (2 / 3),
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
        ),
      ],
    );
  }
}
