import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/theme/colors.dart';
import 'package:fut/feature/teams/presentation/views/widgets/add_player_dialog.dart';

class TeamSquadContainer extends StatefulWidget {
  const TeamSquadContainer({super.key});

  @override
  State<TeamSquadContainer> createState() => _TeamSquadContainerState();
}

class _TeamSquadContainerState extends State<TeamSquadContainer> {
  List player = [
    {
      "name": "Ahmed El Tayar",
      "number": 9,
      "position": "FWD",
      "strongleg": "left",
      "performace": 89
    },
    {
      "name": "Amr Wael",
      "number": 2,
      "position": "DEF",
      "strongleg": "Right",
      "performace": 82
    },
    {
      "name": "Mohammed Salah",
      "number": 5,
      "position": "MID",
      "strongleg": "left",
      "performace": 76
    },
    {
      "name": "omar Bazooka",
      "number": 1,
      "position": "GK",
      "strongleg": "Right",
      "performace": 55
    },
    {
      "name": "Ahmed Ashrf",
      "number": 4,
      "position": "DEF",
      "strongleg": "left",
      "performace": 68
    },
  ];
  final List<Map<String, String>> players = [
    {
      'name': 'Ahmed Kharba',
      'id': '568946264205',
      'imageUrl': 'https://example.com/image1.jpg'
    },
    {
      'name': 'Mohamed Salah',
      'id': '8659531246232',
      'imageUrl': 'https://example.com/image2.jpg'
    },
    {
      'name': 'Mostafa Ashrf',
      'id': '7816461456181',
      'imageUrl': 'https://example.com/image3.jpg'
    },
  ];
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      width: width * 0.45922,
      // height: width < 1000 ? (height * 0.4488) : (height * 0.4488) * 0.9,
      decoration: BoxDecoration(
        color: SharedColors.blackColor.withOpacity(0.7),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
              height: width < 1000
                  ? height * 0.079069
                  : (height * 0.079069) * (2 / 3),
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.r),
                    topRight: Radius.circular(20.r)),
                gradient: const LinearGradient(colors: [
                  Color(0xff9A8E14),
                  Color(0xff95A324),
                  Color(0xff90B834)
                ]),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Team Squad",
                    style: TextStyle(
                        fontFamily: "poppin",
                        fontSize: (width < 1000
                            ? width * 0.023605
                            : (width * 0.023605) * (2 / 3)),
                        color: SharedColors.whiteColor,
                        fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) => PlayerDialog(),
                      );
                    },
                    child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          color: SharedColors.whiteColor,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.add_circle,
                              color: SharedColors.blackColor,
                            ),
                            Text(
                              "Add Player",
                              style: TextStyle(
                                color: SharedColors.blackColor,
                                fontFamily: "poppin",
                                fontWeight: FontWeight.bold,
                                fontSize: width * 0.010729,
                              ),
                            )
                          ],
                        )),
                  )
                ],
              ),
            ),
            Table(
              columnWidths: {
                0: FixedColumnWidth(width * 0.2094),
                6: FixedColumnWidth(width * 0.0594),
              },
              children: [
                TableRow(
                  decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(20)),
                    border: Border(
                      bottom: BorderSide(color: Color(0xff525151), width: 2),
                    ),
                  ),
                  children: [
                    Container(
                      height: width < 1000
                          ? height * 0.1
                          : (height * 0.1) * (2 / 3),
                      padding: width < 1000
                          ? const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 5)
                          : const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 10),
                      child: Text(
                        "Player Name",
                        style: TextStyle(
                          color: SharedColors.whiteColor,
                          fontWeight: FontWeight.bold,
                          fontFamily: "poppin",
                          fontSize: width * 0.021459,
                        ),
                      ),
                    ),
                    Container(
                      height: width < 1000
                          ? height * 0.1
                          : (height * 0.1) * (2 / 3),
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 10),
                      child: Center(
                        child: Text(
                          "Position",
                          style: TextStyle(
                            color: SharedColors.whiteColor,
                            fontWeight: FontWeight.w600,
                            fontFamily: "poppin",
                            fontSize: width * 0.013167,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: width < 1000
                          ? height * 0.1
                          : (height * 0.1) * (2 / 3),
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 10),
                      child: Text(
                        "Strog Foot",
                        style: TextStyle(
                          color: SharedColors.whiteColor,
                          fontWeight: FontWeight.w600,
                          fontFamily: "poppin",
                          fontSize: width * 0.013167,
                        ),
                      ),
                    ),
                    Container(
                      height: width < 1000
                          ? height * 0.1
                          : (height * 0.1) * (2 / 3),
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 10),
                      child: Text(
                        "Perfotmance",
                        style: TextStyle(
                          color: SharedColors.whiteColor,
                          fontWeight: FontWeight.w600,
                          fontFamily: "poppin",
                          fontSize: width * 0.013167,
                        ),
                      ),
                    ),
                  ],
                ),
                for (int i = 0; i < player.length; i++)
                  TableRow(
                    decoration: const BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(20)),
                      border: Border(
                        bottom: BorderSide(color: Color(0xff525151), width: 2),
                      ),
                    ),
                    children: [
                      SizedBox(
                        height: width < 1000
                            ? height * 0.15
                            : (height * 0.15) * (2 / 3),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            i == 0
                                ? Expanded(
                                    child: Container(
                                      width: width * 0.0182403,
                                      height: height * 0.039534,
                                      decoration: const BoxDecoration(
                                        color: SharedColors.yellowColor,
                                        shape: BoxShape.circle,
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(
                                        "C",
                                        style: TextStyle(
                                            color: SharedColors.whiteColor,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "poppin",
                                            fontSize: 5.sp),
                                      ),
                                    ),
                                  )
                                : Expanded(
                                    child: SizedBox(
                                      width: width * 0.0182403,
                                      height: height * 0.039534,
                                    ),
                                  ),
                            Text(
                              "${player[i]["number"]}",
                              style: TextStyle(
                                fontFamily: "poppin",
                                fontWeight: FontWeight.normal,
                                fontSize: width * 0.0150214,
                                color: SharedColors.whiteColor,
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Text(
                                "   ${player[i]["name"]}",
                                style: TextStyle(
                                  fontFamily: "poppin",
                                  fontSize: width * 0.0140944,
                                  color: SharedColors.whiteColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: width < 1000
                            ? height * 0.15
                            : (height * 0.15) * (2 / 3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: width * 0.009656,
                              height: height * 0.020930,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: player[i]["position"] == "FWD"
                                    ? SharedColors.redColor
                                    : player[i]["position"] == "DEF"
                                        ? SharedColors.blueColor
                                        : player[i]["position"] == "MID"
                                            ? SharedColors.midGreenColor
                                            : SharedColors.yellowColor,
                              ),
                            ),
                            SizedBox(
                              width: width * 0.0107296,
                            ),
                            Text(
                              "${player[i]["position"]}",
                              style: TextStyle(
                                fontFamily: "poppin",
                                fontWeight: FontWeight.w600,
                                fontSize: width * 0.01287,
                                color: SharedColors.whiteColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: width < 1000
                            ? height * 0.15
                            : (height * 0.15) * (2 / 3),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Spacer(),
                              player[i]["strongleg"] == "left"
                                  ? Image(
                                      image: const AssetImage(
                                          "assetes/images/left.png"),
                                      width: width * 0.02575,
                                      height: height * 0.04186,
                                    )
                                  : Image(
                                      image: const AssetImage(
                                          "assetes/images/right.png"),
                                      width: width * 0.02575,
                                      height: height * 0.04186,
                                    ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  "${player[i]["strongleg"]}",
                                  style: TextStyle(
                                    fontFamily: "poppin",
                                    fontWeight: FontWeight.w600,
                                    fontSize: width * 0.01287,
                                    color: SharedColors.whiteColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: width < 1000
                            ? height * 0.15
                            : (height * 0.15) * (2 / 3),
                        child: Text(
                          "${player[i]["performace"]}",
                          style: TextStyle(
                            fontFamily: "poppin",
                            fontWeight: FontWeight.w600,
                            fontSize: width * 0.01287,
                            color: SharedColors.whiteColor,
                          ),
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
