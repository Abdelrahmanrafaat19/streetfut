import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/theme/colors.dart';

class TableLeagueScreen extends StatefulWidget {
  const TableLeagueScreen({super.key});

  @override
  State<TableLeagueScreen> createState() => _TableLeagueScreenState();
}

class _TableLeagueScreenState extends State<TableLeagueScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.only(
          top:
              width < 1000 ? height * 0.069767 : (height * 0.069767) * (1 / 2)),
      margin: EdgeInsets.symmetric(
        horizontal: width * 0.128755,
      ),
      width: double.infinity,
      height: width < 1000 ? height * 0.7 : height * 0.73,
      child: SingleChildScrollView(
          child: Table(
        columnWidths: {
          0: FixedColumnWidth(width * 0.2094),
          6: FixedColumnWidth(width * 0.2094)
        },
        children: [
          TableRow(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
              gradient: const LinearGradient(
                colors: [
                  Color(0xff9A8E14),
                  Color(0xff95A324),
                  Color(0xff90B834),
                ],
              ),
            ),
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 4, vertical: 10),
                child: Text(
                  "Maadi league ",
                  style: TextStyle(
                    color: SharedColors.whiteColor,
                    fontWeight: FontWeight.bold,
                    fontFamily: "poppin",
                    fontSize: width * 0.021459,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding:
                    const EdgeInsets.symmetric(horizontal: 4, vertical: 10),
                child: Center(
                  child: Text(
                    "MP",
                    style: TextStyle(
                      color: SharedColors.whiteColor,
                      fontWeight: FontWeight.w600,
                      fontFamily: "poppin",
                      fontSize: width * 0.017167,
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding:
                    const EdgeInsets.symmetric(horizontal: 4, vertical: 10),
                child: Text(
                  "W",
                  style: TextStyle(
                    color: SharedColors.whiteColor,
                    fontWeight: FontWeight.w600,
                    fontFamily: "poppin",
                    fontSize: width * 0.017167,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding:
                    const EdgeInsets.symmetric(horizontal: 4, vertical: 10),
                child: Text(
                  "D",
                  style: TextStyle(
                    color: SharedColors.whiteColor,
                    fontWeight: FontWeight.w600,
                    fontFamily: "poppin",
                    fontSize: width * 0.017167,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding:
                    const EdgeInsets.symmetric(horizontal: 4, vertical: 10),
                child: Text(
                  "L",
                  style: TextStyle(
                    color: SharedColors.whiteColor,
                    fontWeight: FontWeight.w600,
                    fontFamily: "poppin",
                    fontSize: width * 0.017167,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding:
                    const EdgeInsets.symmetric(horizontal: 4, vertical: 10),
                child: Text(
                  "+/-",
                  style: TextStyle(
                    color: SharedColors.whiteColor,
                    fontWeight: FontWeight.w600,
                    fontFamily: "poppin",
                    fontSize: width * 0.017167,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding:
                    const EdgeInsets.symmetric(horizontal: 4, vertical: 10),
                child: Text(
                  "PTS",
                  style: TextStyle(
                    color: SharedColors.whiteColor,
                    fontWeight: FontWeight.w600,
                    fontFamily: "poppin",
                    fontSize: width * 0.017167,
                  ),
                ),
              ),
            ],
          ),
          for (int i = 0; i < 13; i++)
            TableRow(
              decoration: BoxDecoration(
                color: const Color(0xff363535).withOpacity(0.7),
                borderRadius: i == 12
                    ? const BorderRadius.vertical(bottom: Radius.circular(20))
                    : null,
                border: const Border(
                  bottom: BorderSide(color: Color(0xff525151), width: 2),
                ),
              ),
              children: [
                SizedBox(
                  height:
                      width < 1000 ? height * 0.15 : (height * 0.15) * (2 / 3),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "  ${i + 1}",
                        style: TextStyle(
                          fontFamily: "poppin",
                          fontWeight: FontWeight.normal,
                          fontSize: width * 0.0150214,
                          color: SharedColors.whiteColor,
                        ),
                      ),
                      Expanded(
                        child: Image(
                            width: width * 0.024678,
                            height: height * 0.0581395,
                            image:
                                const AssetImage("assetes/images/team a.png")),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          " Elahlawya",
                          style: TextStyle(
                            fontFamily: "poppin",
                            fontWeight: FontWeight.w600,
                            fontSize: width * 0.0150214,
                            color: SharedColors.whiteColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.center,
                  height:
                      width < 1000 ? height * 0.15 : (height * 0.15) * (2 / 3),
                  child: Text(
                    "34",
                    style: TextStyle(
                      fontFamily: "poppin",
                      fontWeight: FontWeight.w600,
                      fontSize: width * 0.0150214,
                      color: SharedColors.whiteColor,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height:
                      width < 1000 ? height * 0.15 : (height * 0.15) * (2 / 3),
                  child: Text(
                    "27",
                    style: TextStyle(
                      fontFamily: "poppin",
                      fontWeight: FontWeight.w600,
                      fontSize: width * 0.0150214,
                      color: SharedColors.whiteColor,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height:
                      width < 1000 ? height * 0.15 : (height * 0.15) * (2 / 3),
                  child: Text(
                    "43",
                    style: TextStyle(
                      fontFamily: "poppin",
                      fontWeight: FontWeight.w600,
                      fontSize: width * 0.0150214,
                      color: SharedColors.whiteColor,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height:
                      width < 1000 ? height * 0.15 : (height * 0.15) * (2 / 3),
                  child: Text(
                    "6",
                    style: TextStyle(
                      fontFamily: "poppin",
                      fontWeight: FontWeight.w600,
                      fontSize: width * 0.0150214,
                      color: SharedColors.whiteColor,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height:
                      width < 1000 ? height * 0.15 : (height * 0.15) * (2 / 3),
                  child: Text(
                    "85",
                    style: TextStyle(
                      fontFamily: "poppin",
                      fontWeight: FontWeight.w600,
                      fontSize: width * 0.0150214,
                      color: SharedColors.whiteColor,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height:
                      width < 1000 ? height * 0.15 : (height * 0.15) * (2 / 3),
                  child: Text(
                    "85",
                    style: TextStyle(
                      fontFamily: "poppin",
                      fontWeight: FontWeight.w600,
                      fontSize: width * 0.0150214,
                      color: SharedColors.whiteColor,
                    ),
                  ),
                ),
              ],
            ),
        ],
      )),
    );
  }
}
