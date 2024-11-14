import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fut/core/component/custam_app_bar.dart';
import 'package:fut/core/get_width_height_method.dart';
import 'package:fut/core/responsive_font.dart';
import 'package:fut/core/theme/colors.dart';
import 'package:fut/feature/match_mode/presentation/views/widgets/tabs_play_mode.dart';

class PlayModeBody extends StatelessWidget {
  PlayModeBody({super.key});
  final List image = [
    "assetes/images/soccerball.png",
    "assetes/images/Star.png",
    "assetes/images/shake-hands 1.png",
    "assetes/images/Trophy.png",
  ];

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assetes/svg/playmodebackground.png"))),
        child: CustomScrollView(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          slivers: [
            SliverAppBar(
              // stretch: true,
              pinned: true,
              // snap: true,
              floating: false,
              leadingWidth:
                  width < 1000 ? (width * 0.637982) : (width * 0.587982) * 0.9,
              leading: const CustamAppBar(),
              toolbarHeight: width < 1000 ? height * 0.081395 : height * 0.0813,
              actions: [
                Text(
                  "Sponsored By",
                  style: TextStyle(
                    color: SharedColors.whiteColor,
                    fontFamily: "poppin",
                    fontWeight: FontWeight.w500,
                    fontSize: getResponsiveFont(context, fontSize: 13),
                  ),
                ),
                SizedBox(
                  width: width * 0.02399,
                )
              ],
              bottom: CustamPreferrsdSizeWidget(
                height: width < 1000
                    ? height * 0.05604
                    : (height * 0.18604) * (1 / 4),
                child: Container(
                  margin: EdgeInsets.only(
                    left: width * 0.02399,
                    right: width * 0.02399,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.arrow_back,
                              color: SharedColors.whiteColor,
                              size: width * getWidth(context, 30),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            "assetes/svg/eand.svg",
                          ),
                          const SizedBox(
                            width: 13,
                          ),
                          SvgPicture.asset(
                            "assetes/svg/pepso.svg",
                          ),
                          const SizedBox(
                            width: 13,
                          ),
                          SvgPicture.asset(
                            "assetes/svg/banko.svg",
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.0686),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: height * 0.06279,
                    ),
                    Row(
                      children: [
                        const TabsPlayMode(
                          iconPath: "assetes/svg/balll.svg",
                          imagePath: "assetes/images/booking.png",
                          name: "Pitch Booking",
                        ),
                        SizedBox(
                          width: width * 0.03969,
                        ),
                        const TabsPlayMode(
                          iconPath: "assetes/svg/friendmatch.svg",
                          imagePath: "assetes/images/frindlymatch.png",
                          name: "Friendly Match",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.06279,
                    ),
                    Row(
                      children: [
                        const TabsPlayMode(
                          iconPath: "assetes/svg/tro.svg",
                          imagePath: "assetes/images/entertournment.png",
                          name: "Enter Tournment",
                        ),
                        SizedBox(
                          width: width * 0.03969,
                        ),
                        const TabsPlayMode(
                          iconPath: "assetes/svg/challengeteam.svg",
                          imagePath: "assetes/images/challngeteam.png",
                          name: "Challenge Team",
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}

class CustamPreferrsdSizeWidget extends StatelessWidget
    implements PreferredSizeWidget {
  final Widget child;
  final double height;

  const CustamPreferrsdSizeWidget(
      {super.key, required this.child, required this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height, // Apply the preferred height
      child: child, // Your wrapped widget
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
