import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fut/core/component/custam_app_bar.dart';
import 'package:fut/core/responsive_font.dart';
import 'package:fut/core/theme/colors.dart';
import 'package:fut/feature/home/presentation/views/widgets/drawer.dart';
import 'package:fut/feature/home/presentation/views/widgets/home_body.dart';
import 'package:fut/feature/pitches/presentation/views/widgets/titel_pitches_screen.dart';
import 'package:fut/generated/l10n.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    debugPrint("$width   $height");
    return Scaffold(
      key: _scaffoldKey,
      drawer: const DrawerHome(),
      appBar: AppBar(
        forceMaterialTransparency: true,
        backgroundColor: const Color(0xff131313),
        leadingWidth:
            width < 1000 ? (width * 0.637982) : (width * 0.587982) * 0.9,
        leading: const CustamAppBar(),
        toolbarHeight: width < 1000 ? height * 0.081395 : height * 0.0813,
        bottom: CustamPreferrsdSizeWidget(
          height:
              width < 1000 ? height * 0.10604 : (height * 0.18604) * (2 / 3),
          child: Container(
            margin: EdgeInsets.only(
              left: width * 0.02399,
              right: width * 0.02399,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => _scaffoldKey.currentState!.openDrawer(),
                  child: Container(
                    height: height * 0.0534,
                    alignment: Alignment.centerLeft,
                    child: ImageIcon(
                      const AssetImage(
                        "assetes/svg/menu.png",
                      ),
                      color: SharedColors.whiteColor,
                      size: width * 0.03755,
                    ),
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
      ),
      body: const HomeBody(),
    );
  }
}
