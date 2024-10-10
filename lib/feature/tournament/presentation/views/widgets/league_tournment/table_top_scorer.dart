import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/theme/colors.dart';

class TableTopScorer extends StatelessWidget {
  const TableTopScorer({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      width: width * 0.39163,
      height:
          width < 1000 ? (height * 0.4488) * (3 / 4) : (height * 0.4488) * 0.9,
      decoration: BoxDecoration(
        color: const Color(0xff3D3F41).withOpacity(0.7),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(width < 1000 ? 4 : 4),
            width: width * 0.48605,
            height:
                width < 1000 ? height * 0.09302 : (height * 0.09302) * (2 / 3),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color(0xff9A8E14),
                  Color(0xff95A324),
                  Color(0xff90B834),
                ],
              ),
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20.r),
              ),
            ),
            child: Text(
              "Top Scorer",
              style: TextStyle(
                color: SharedColors.whiteColor,
                fontFamily: "poppin",
                fontWeight: FontWeight.bold,
                fontSize: width * 0.023605,
              ),
            ),
          ),
          SizedBox(
            width: width * 0.48605,
            height: width < 1000
                ? ((height * 0.4488) * (3 / 4)) - (height * 0.09302)
                : ((height * 0.4488) * 0.9) - ((height * 0.09302) * (2 / 3)),
            child: SingleChildScrollView(
                child: Table(
              columnWidths: {
                1: FixedColumnWidth(width * 0.2094),
              },
              children: [
                TableRow(
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20.r)),
                  ),
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 4,
                      ),
                      child: Text(
                        "Rank",
                        style: TextStyle(
                          color: SharedColors.whiteColor,
                          fontWeight: FontWeight.w600,
                          fontFamily: "poppin",
                          fontSize: width * 0.01287,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 4,
                      ),
                      child: Text(
                        "name",
                        style: TextStyle(
                          color: SharedColors.whiteColor,
                          fontWeight: FontWeight.w500,
                          fontFamily: "poppin",
                          fontSize: width * 0.01287,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 4,
                      ),
                      child: Text(
                        "Goals",
                        style: TextStyle(
                          color: SharedColors.whiteColor,
                          fontWeight: FontWeight.w500,
                          fontFamily: "poppin",
                          fontSize: width * 0.01287,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 4,
                      ),
                      child: Text(
                        "Team",
                        style: TextStyle(
                          color: SharedColors.whiteColor,
                          fontWeight: FontWeight.w500,
                          fontFamily: "poppin",
                          fontSize: width * 0.01287,
                        ),
                      ),
                    ),
                  ],
                ),
                for (int i = 0; i < 13; i++)
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
                        alignment: Alignment.center,
                        height: width < 1000
                            ? (height * 0.15) * (2 / 3)
                            : ((height * 0.15) * (2 / 3)) * (2 / 3),
                        child: Text(
                          "${i + 1}",
                          style: TextStyle(
                            fontFamily: "poppin",
                            fontWeight: FontWeight.w600,
                            fontSize: width * 0.01287,
                            color: SharedColors.whiteColor,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: width < 1000
                            ? (height * 0.15) * (2 / 3)
                            : ((height * 0.15) * (2 / 3)) * (2 / 3),
                        child: Text(
                          "Abdelrahman Shoaib",
                          maxLines: 1,
                          style: TextStyle(
                            fontFamily: "poppin",
                            fontWeight: FontWeight.w500,
                            fontSize: width * 0.01287,
                            color: SharedColors.whiteColor,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: width < 1000
                            ? (height * 0.15) * (2 / 3)
                            : ((height * 0.15) * (2 / 3)) * (2 / 3),
                        child: Text(
                          "85",
                          style: TextStyle(
                            fontFamily: "poppin",
                            fontWeight: FontWeight.w500,
                            fontSize: width * 0.01287,
                            color: SharedColors.whiteColor,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: width < 1000
                            ? (height * 0.15) * (2 / 3)
                            : ((height * 0.15) * (2 / 3)) * (2 / 3),
                        child: Image.asset("assetes/images/team a.png",
                            height: width < 1000
                                ? (height * 0.15) / 2
                                : ((height * 0.15) * (2 / 3)) / 2),
                      ),
                    ],
                  ),
              ],
            )),
          )
        ],
      ),
    );
  }
}
