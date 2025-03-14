import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fut/core/component/custam_app_bar.dart';
import 'package:fut/core/get_width_height_method.dart';
import 'package:fut/core/responsive_font.dart';
import 'package:fut/core/theme/colors.dart';
import 'package:fut/feature/notification/presentation/views/widgets/notification_body.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(),
        child: Stack(
          children: [
            Positioned.fill(
              child: SizedBox.expand(
                child: FittedBox(
                  fit: BoxFit.fill,
                  child:
                      Image.asset("assetes/images/notification_background.png"),
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
                      width < 1000 ? height * 0.081395 : height * 0.0813,
                  bottom: CustamPreferrsdSizeWidget(
                    height: width < 1000
                        ? height * 0.07604
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
                const SliverToBoxAdapter(child: NotificationBody())
              ],
            ),
          ],
        ),
      ),
    );
  }
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
