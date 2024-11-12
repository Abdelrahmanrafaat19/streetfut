import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fut/core/component/custam_app_bar.dart';
import 'package:fut/core/get_width_height_method.dart';
import 'package:fut/core/responsive_font.dart';
import 'package:fut/core/theme/colors.dart';
import 'package:fut/feature/referee_mode.dart/presentation/views/widget/refree_profile_body.dart';

class RefreeProfile extends StatefulWidget {
  const RefreeProfile({super.key});

  @override
  State<RefreeProfile> createState() => _RefreeProfileState();
}

class _RefreeProfileState extends State<RefreeProfile> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(),
      child: Stack(
        children: [
          Positioned.fill(
            child: SizedBox.expand(
              child: FittedBox(
                fit: BoxFit.fill,
                child: Opacity(
                    opacity: 0.5,
                    child: Image.asset("assetes/images/referee_mood.png")),
              ),
            ),
          ),
          CustomScrollView(
            physics: const NeverScrollableScrollPhysics(),
            // shrinkWrap: true,
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.transparent,
                forceElevated: false,
                // stretch: true,
                pinned: true,
                // snap: true,
                floating: false,
                leading: const CustamAppBar(),
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
                leadingWidth: width < 1000
                    ? (width * 0.637982)
                    : (width * 0.587982) * 0.9,

                toolbarHeight:
                    width < 1000 ? height * 0.11395 : height * 0.0813,
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
              const SliverToBoxAdapter(child: RefreeProfileBody())
            ],
          ),
        ],
      ),
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
