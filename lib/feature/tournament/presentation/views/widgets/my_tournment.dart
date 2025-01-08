import 'package:flutter/material.dart';
import 'package:fut/core/theme/colors.dart';
import 'package:fut/feature/tournament/presentation/views/widgets/league_tournment/league_tournment.dart';
import 'package:fut/feature/tournament/presentation/views/widgets/mini_tournment/mini_tournment.dart';
import 'package:fut/feature/tournament/presentation/views/widgets/mixed_league_tournment/mixed_league_tournment.dart';
import 'package:fut/feature/tournament/presentation/views/widgets/mixed_tournment/mixed_tournment_screen.dart';
import 'package:fut/generated/l10n.dart';

class MyTournmentScreen extends StatefulWidget {
  const MyTournmentScreen({super.key});

  @override
  State<MyTournmentScreen> createState() => _MyTournmentScreenState();
}

List<String> type = [
  "knockout",
  "mixedknockout",
  "mixedleagua",
  "league",
  "mixedleagua",
  "league",
  "mixedleagua",
  "league"
];

class _MyTournmentScreenState extends State<MyTournmentScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: double.infinity,
      height: width < 1000 ? height * 0.75 : height * 0.8,
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
                  /*  margin: EdgeInsets.symmetric(
                    horizontal: width * 0.15513,
                    vertical: 10,
                  ), */
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
                                S.of(context).type,
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
                                  S.of(context).area,
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
                                  S.of(context).from,
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
                                  S.of(context).to,
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
                        width: width * 0.064377,
                        height: height * 0.13953,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image:
                                    AssetImage("assetes/images/team a.png"))),
                      )
                    ],
                  ),
                ),
              )),
    );
  }
}
