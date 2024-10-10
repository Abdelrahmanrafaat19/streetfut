import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/responsive_font.dart';
import 'package:fut/core/theme/colors.dart';
import 'package:fut/feature/tournament/presentation/views/widgets/league_tournment/league_tournment.dart';
import 'package:fut/feature/tournament/presentation/views/widgets/mini_tournment/mini_tournment.dart';
import 'package:fut/feature/tournament/presentation/views/widgets/mixed_league_tournment/mixed_league_tournment.dart';
import 'package:fut/feature/tournament/presentation/views/widgets/mixed_tournment/mixed_tournment_screen.dart';

class JoinTournmrntScreen extends StatefulWidget {
  const JoinTournmrntScreen({super.key});

  @override
  State<JoinTournmrntScreen> createState() => _JoinTournmrntScreenState();
}

List<String> type = ["knockout", "mixedknockout", "mixedleagua", "league"];

class _JoinTournmrntScreenState extends State<JoinTournmrntScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: double.infinity,
      height: width < 1000 ? height * 0.6 : height * 0.73,
      child: ListView.builder(
          itemCount: type.length,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  if (type[index] == "knockout") {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const MiniTournmentScreen(),
                    ));
                  } else if (type[index] == "mixedknockout") {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const MixedTournmentScreen(),
                    ));
                  } else if (type[index] == "mixedleagua") {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const MixedLeagueTournmentScreen(),
                    ));
                  } else {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const LeagueTournmentScreen(),
                    ));
                  }
                },
                child: Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: width * 0.06513,
                    vertical: 10,
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: width < 1000
                            ? width * 0.04828
                            : (width * 0.04828) * 2,
                        height: height * 0.12465,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assetes/images/pepsi.png"))),
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
                              fontFamily: "poppin",
                              fontWeight: FontWeight.bold,
                              fontSize: width * 0.01716,
                              color: SharedColors.whiteColor,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "Type:",
                                style: TextStyle(
                                  fontFamily: "poppin",
                                  fontWeight: FontWeight.w600,
                                  fontSize: width * 0.017167,
                                  color: SharedColors.greenColor,
                                ),
                              ),
                              Text(
                                type[index],
                                style: TextStyle(
                                  fontFamily: "poppin",
                                  fontWeight: FontWeight.w600,
                                  fontSize: width * 0.017167,
                                  color: SharedColors.whiteColor,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        width: width < 1000
                            ? width * 0.05901
                            : (width * 0.05901) * (2 / 3),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Area:",
                                  style: TextStyle(
                                    fontFamily: "poppin",
                                    fontWeight: FontWeight.w600,
                                    fontSize: width * 0.017167,
                                    color: SharedColors.greenColor,
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    " Naser City00000000000000000",
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontFamily: "poppin",
                                      fontWeight: FontWeight.w600,
                                      fontSize: width * 0.017167,
                                      color: SharedColors.whiteColor,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "to:",
                                  style: TextStyle(
                                    fontFamily: "poppin",
                                    fontWeight: FontWeight.w600,
                                    fontSize: width * 0.017167,
                                    color: SharedColors.greenColor,
                                  ),
                                ),
                                Text(
                                  " 10/07",
                                  style: TextStyle(
                                    fontFamily: "poppin",
                                    fontWeight: FontWeight.w600,
                                    fontSize: width * 0.017167,
                                    color: SharedColors.whiteColor,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "from:",
                                  style: TextStyle(
                                    fontFamily: "poppin",
                                    fontWeight: FontWeight.w600,
                                    fontSize: width * 0.017167,
                                    color: SharedColors.greenColor,
                                  ),
                                ),
                                Text(
                                  " 10/07",
                                  style: TextStyle(
                                    fontFamily: "poppin",
                                    fontWeight: FontWeight.w600,
                                    fontSize: width * 0.017167,
                                    color: SharedColors.whiteColor,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: width < 1000
                            ? width * 0.05901
                            : (width * 0.05901) * (2 / 3),
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
                        width: 40,
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: width * 0.14592,
                        height: height * 0.09302,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Text(
                          "Join",
                          style: TextStyle(
                            color: SharedColors.whiteColor,
                            fontFamily: "poppin",
                            fontWeight: FontWeight.bold,
                            fontSize: width * 0.021459,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )),
    );
  }
}
