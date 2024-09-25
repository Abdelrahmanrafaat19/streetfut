import 'package:flutter/material.dart';
import 'package:flutter_pannable_rating_bar/flutter_pannable_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fut/core/theme/colors.dart';
import 'package:fut/feature/match_mode/presentation/views/play_mode.dart';
import 'package:page_transition/page_transition.dart';

class MyTeamScreen extends StatefulWidget {
  const MyTeamScreen({super.key});

  @override
  State<MyTeamScreen> createState() => _MyTeamScreenState();
}

class _MyTeamScreenState extends State<MyTeamScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      width: double.infinity,
      height: width < 100 ? height * (1 / 2) : height * (3 / 4),
      child: ListView.builder(
          itemCount: 250,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(PageTransition(
                      child: const PlayModeScreen(),
                      alignment: Alignment.center,
                      type: PageTransitionType.leftToRightWithFade,
                      duration: const Duration(seconds: 2)));
                },
                child: Container(
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
                      SvgPicture.asset(
                        "assetes/svg/captian.svg",
                        color: const Color(0xffFFFF00),
                        width: width * 0.03219,
                        height: height * 0.05116,
                      )
                    ],
                  ),
                ),
              )),
    );
  }
}
