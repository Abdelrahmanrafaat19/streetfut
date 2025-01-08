import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fut/core/component/custam_app_bar.dart';
import 'package:fut/core/get_width_height_method.dart';
import 'package:fut/core/responsive_font.dart';
import 'package:fut/core/theme/colors.dart';
import 'package:fut/feature/tournament/presentation/views/widgets/league_tournment/fixture_details.dart';
import 'package:fut/feature/tournament/presentation/views/widgets/league_tournment/table_league.dart';
import 'package:video_player/video_player.dart';

import '../../../../../../generated/l10n.dart';

class LeagueTournmentScreen extends StatefulWidget {
  const LeagueTournmentScreen({super.key});

  @override
  State<LeagueTournmentScreen> createState() => _LeagueTournmentScreenState();
}

class _LeagueTournmentScreenState extends State<LeagueTournmentScreen> {
  List screens = [
    const TableLeagueScreen(),
    const FixtureDetailsScreen(),
  ];

  int index = 0;
  late VideoPlayerController _controller;
  bool toggle = false;
  @override
  void initState() {
    _controller = VideoPlayerController.asset('assetes/vedio/teampage.mp4')
      ..initialize().then((_) {
        _controller.setLooping(false); // Loop the video
        _controller.play();
        toggle = true;
        // Start playing the video
        setState(() {}); // Update UI when the video is initialized
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<String> teamsType = [
      S.of(context).table,
      S.of(context).fixtureanddetails,
    ];
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    debugPrint(width.toString());
    return DefaultTabController(
      length: teamsType.length,
      child: Scaffold(
          body: Container(
        decoration: const BoxDecoration(),
        child: Stack(
          children: [
            Positioned.fill(
              child: SizedBox.expand(
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: toggle == true
                      ? SizedBox(
                          width: _controller.value.size.width,
                          height: _controller.value.size.height,
                          child: VideoPlayer(
                            _controller,
                          ),
                        )
                      : Image.asset("assetes/images/teamsBackground.png"),
                ),
              ),
            ),
            CustomScrollView(
              physics: const NeverScrollableScrollPhysics(),
              // shrinkWrap: true,
              slivers: [
                SliverAppBar(
                  backgroundColor: Colors.transparent,
                  forceElevated: true,
                  // stretch: true,
                  pinned: true,
                  // snap: true,
                  floating: false,

                  actions: [
                    Text(
                      S.of(context).sponsoredby,
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
                  leadingWidth: width < 1000
                      ? (width * 0.637982)
                      : (width * 0.587982) * 0.9,
                  leading: const CustamAppBar(),
                  toolbarHeight:
                      width < 1000 ? height * 0.081395 : height * 0.0813,
                  bottom: CustamPreferrsdSizeWidget(
                    height: width < 1000
                        ? height * 0.10604
                        : (height * 0.18604) * (2 / 3),
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
                          Padding(
                            padding: EdgeInsets.only(
                                bottom: width > 1000
                                    ? height * 0.08279
                                    : (height * 0.08279) / 2),
                            child: Row(
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
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SliverPersistentHeader(
                  pinned: true, // Keep the widget pinned at the top
                  floating: false, // Do not float the widget
                  delegate: MySliverAppBarDelegate(
                    maxHeight: width < 950
                        ? height * 0.1096
                        : (height * 0.1096) * (2 / 3),
                    minHeight: width < 950
                        ? height * 0.1096
                        : (height * 0.1096) * (2 / 3),
                    child: Container(
                      height:
                          width < 950 ? height * 0.1096 : (height * 0.1096) / 2,
                      margin: EdgeInsets.symmetric(horizontal: width * 0.28513),
                      decoration: BoxDecoration(
                          color: SharedColors.greyNormalColor,
                          borderRadius: BorderRadius.circular(50.r)),
                      child: TabBar(
                        isScrollable: false,
                        // splashBorderRadius: BorderRadius.circular(100.r),
                        enableFeedback: false,
                        indicator: BoxDecoration(
                          // color: const Color(0xff7f7f7f),
                          borderRadius: BorderRadius.circular(50.r),
                        ),
                        automaticIndicatorColorAdjustment: false,
                        unselectedLabelColor: SharedColors.greenColor,
                        onTap: (value) => setState(() {
                          index = value;
                        }),
                        indicatorPadding: EdgeInsets.symmetric(
                            horizontal: width * 0.005,
                            vertical: height * 0.0099),
                        labelPadding: EdgeInsets.symmetric(
                            horizontal: width * 0.005,
                            vertical: height * 0.0049),
                        // tabAlignment: TabAlignment.start,
                        dividerHeight: 0.0,
                        labelColor: SharedColors.whiteColor,
                        indicatorColor: Colors.transparent,
                        overlayColor:
                            const WidgetStatePropertyAll(Colors.transparent),
                        labelStyle: TextStyle(
                            fontFamily: "poppin",
                            fontSize: width < 950
                                ? width * 0.0152
                                : (width * 0.0252) * 0.5,
                            fontWeight: FontWeight.w800),
                        tabs: [
                          for (int i = 0; i < teamsType.length; i++)
                            Container(
                              alignment: Alignment.center,
                              width: width * 0.2014,
                              height: width < 950
                                  ? height * 0.201
                                  : (height * 0.201) / 2,
                              /*  padding: EdgeInsets.symmetric(
                                    horizontal: width * 0.01639,
                                  ), */
                              decoration: BoxDecoration(
                                color: index == i
                                    ? SharedColors.greenColor
                                    : SharedColors.whiteColor,
                                borderRadius: BorderRadius.circular(30.r),
                              ),
                              child: Tab(
                                height: width < 1000
                                    ? height * 0.201
                                    : (height * 0.201) / 2,
                                text: teamsType[i],
                              ),
                            )
                        ],
                      ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(child: screens[index])
              ],
            ),
          ],
        ),
      )),
    );
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

class MySliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;
  final Widget child;

  MySliverAppBarDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => maxHeight;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(MySliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}
