import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/component/custam_app_bar.dart';
import 'package:fut/core/responsive_font.dart';
import 'package:fut/core/theme/colors.dart';
import 'package:fut/feature/teams/presentation/views/widgets/create_team.dart';
import 'package:fut/feature/teams/presentation/views/widgets/my_team.dart';
import 'package:fut/feature/teams/presentation/views/widgets/othe_teams.dart';
import 'package:video_player/video_player.dart';

class TeamsScreen extends StatefulWidget {
  const TeamsScreen({super.key});

  @override
  State<TeamsScreen> createState() => _TeamsScreenState();
}

class _TeamsScreenState extends State<TeamsScreen> {
  List<String> teamsType = ["MyTeams", "OtherTeams", "+CreateTeam"];
  List screens = [
    const MyTeamScreen(),
    const OtheTeamsScreen(),
    const CreateTeam()
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
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    debugPrint(width.toString());
    return DefaultTabController(
      length: 3,
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
                  leading: const CustamAppBar(),
                  leadingWidth:
                      width < 950 ? (width * 0.550) : (width * 0.550) * (3 / 4),
                  bottom: AppBar(
                    centerTitle: true,
                    backgroundColor: Colors.transparent,
                    forceMaterialTransparency: true,
                    leadingWidth: width * 0.1092,
                    leading: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: SharedColors.whiteColor,
                        size: getResponsiveFont(context, fontSize: 20),
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
                      margin: EdgeInsets.symmetric(horizontal: width * 0.22513),
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
                            vertical: height * 0.0049),
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
                                : (width * 0.0252) * (3 / 4),
                            fontWeight: FontWeight.w800),
                        tabs: [
                          for (int i = 0; i < 3; i++)
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
                                height: width < 950
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

/* SizedBox(
          width: double.infinity,
          child: Stack(
            children: [
              Positioned.fill(
                  child: Image.asset(
                "assetes/images/loginBackGround.png",
                fit: BoxFit.cover,
              )),
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 0.251,
                      child: AppBar(
                        title: const CustamAppBar(),
                        bottom: AppBar(
                          centerTitle: true,
                          leadingWidth: width * 0.1092,
                          title: Text(
                            "Teams",
                            style: TextStyle(
                                color: SharedColors.greenColor,
                                fontSize:
                                    getResponsiveFont(context, fontSize: 36),
                                fontFamily: "postnobills",
                                fontWeight: FontWeight.w800),
                          ),
                          leading: Row(
                            children: [
                              Icon(
                                Icons.arrow_back_ios_new_outlined,
                                color: SharedColors.whiteColor,
                                size: getResponsiveFont(context, fontSize: 16),
                              ),
                              Text(
                                'Back',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'TimesNewRoman',
                                  color: Colors.white,
                                  fontSize:
                                      getResponsiveFont(context, fontSize: 15),
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: height * 0.1096,
                      margin: EdgeInsets.symmetric(horizontal: width * 0.22513),
                      decoration: BoxDecoration(
                          color: SharedColors.greyNormalColor,
                          borderRadius: BorderRadius.circular(50.r)),
                      child: TabBar(
                        isScrollable: false,
                        // splashBorderRadius: BorderRadius.circular(100.r),
                        enableFeedback: false,
                        indicator: BoxDecoration(
                          color: const Color(0xff7f7f7f),
                          borderRadius: BorderRadius.circular(50.r),
                        ),
                        automaticIndicatorColorAdjustment: false,
                        unselectedLabelColor: SharedColors.blackColor,
                        onTap: (value) => setState(() {
                          index = value;
                        }),
                        indicatorPadding: EdgeInsets.symmetric(
                            horizontal: width * 0.005,
                            vertical: height * 0.0049),
                        labelPadding: EdgeInsets.symmetric(
                            horizontal: width * 0.005,
                            vertical: height * 0.0049),
                        // tabAlignment: TabAlignment.start,
                        dividerHeight: 0.0,

                        labelColor: SharedColors.blackColor,
                        indicatorColor: Colors.transparent,
                        overlayColor:
                            const WidgetStatePropertyAll(Colors.transparent),
                        labelStyle: TextStyle(
                            fontFamily: "postnobills",
                            fontSize: width * 0.0252,
                            fontWeight: FontWeight.w800),
                        tabs: [
                          for (int i = 0; i < 3; i++)
                            Container(
                              alignment: Alignment.center,
                              width: width * 0.2014,
                              height: height * 0.201,
                              /*  padding: EdgeInsets.symmetric(
                                horizontal: width * 0.01639,
                              ), */
                              decoration: BoxDecoration(
                                color: index == i
                                    ? const Color(0xff7f7f7f)
                                    : SharedColors.whiteColor,
                                borderRadius: BorderRadius.circular(30.r),
                              ),
                              child: Tab(
                                height: height * 0.201,
                                text: teamsType[i],
                              ),
                            ),
                        ],
                      ),
                    ),
                    SizedBox(
                        width: double.infinity,
                        child: ListView.builder(
                          itemCount: 200,
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Text("data$index");
                          },
                        ))
                  ],
                ),
              ),
            ],
          ),
        ), */
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
