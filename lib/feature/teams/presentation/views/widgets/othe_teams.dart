import 'package:flutter/material.dart';
import 'package:flutter_pannable_rating_bar/flutter_pannable_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/component/custam_drop_down_field.dart';
import 'package:fut/core/responsive_font.dart';
import 'package:fut/core/theme/colors.dart';
import 'package:fut/feature/pitches/presentation/views/widgets/search_field.dart';
import 'package:fut/generated/l10n.dart';

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
        SearchField(
          hint: S.of(context).searchbyteamID,
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustamDropDwonField(
              data: const ["Naser_city", "New_cairo"],
              text: S.of(context).area,
            ),
            SizedBox(
              width: width * 0.02896,
            ),
            CustamDropDwonField(
              data: const ["Naser_city", "New_cairo"],
              text: S.of(context).sortby,
            ),
          ],
        ),
        SizedBox(
          width: double.infinity,
          height: width < 1000 ? height * 0.55 : height * 0.6,
          child: ListView.builder(
              itemCount: 250,
              itemBuilder: (context, index) => Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: width * 0.13513,
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
                              Expanded(
                                flex: 2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Shabab Sharkawya${index + 1}",
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontFamily: "poppin",
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
                                ),
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
                            S.of(context).requesttojoin,
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
