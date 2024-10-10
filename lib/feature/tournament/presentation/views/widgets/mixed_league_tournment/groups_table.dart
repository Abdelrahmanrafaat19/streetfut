import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/theme/colors.dart';

class GroupTable extends StatefulWidget {
  final String groupName;
  const GroupTable({super.key, required this.groupName});

  @override
  State<GroupTable> createState() => _GroupTableState();
}

class _GroupTableState extends State<GroupTable> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      width: width * 0.45922,
      height: width < 1000 ? (height * 0.4488) : (height * 0.4488) * 0.9,
      decoration: BoxDecoration(
        color: const Color(0xff3D3F41).withOpacity(0.7),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: SingleChildScrollView(
          child: Table(
        columnWidths: {
          0: FixedColumnWidth(width * 0.2094),
          6: FixedColumnWidth(width * 0.0594),
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
              Container(
                height: width < 1000 ? height * 0.1 : (height * 0.1) * (2 / 3),
                padding: width < 1000
                    ? const EdgeInsets.symmetric(horizontal: 5, vertical: 5)
                    : const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                child: Text(
                  widget.groupName,
                  style: TextStyle(
                    color: SharedColors.whiteColor,
                    fontWeight: FontWeight.bold,
                    fontFamily: "poppin",
                    fontSize: width * 0.021459,
                  ),
                ),
              ),
              Container(
                height: width < 1000 ? height * 0.1 : (height * 0.1) * (2 / 3),
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
                      fontSize: width * 0.013167,
                    ),
                  ),
                ),
              ),
              Container(
                height: width < 1000 ? height * 0.1 : (height * 0.1) * (2 / 3),
                alignment: Alignment.center,
                padding:
                    const EdgeInsets.symmetric(horizontal: 4, vertical: 10),
                child: Text(
                  "W",
                  style: TextStyle(
                    color: SharedColors.whiteColor,
                    fontWeight: FontWeight.w600,
                    fontFamily: "poppin",
                    fontSize: width * 0.013167,
                  ),
                ),
              ),
              Container(
                height: width < 1000 ? height * 0.1 : (height * 0.1) * (2 / 3),
                alignment: Alignment.center,
                padding:
                    const EdgeInsets.symmetric(horizontal: 4, vertical: 10),
                child: Text(
                  "D",
                  style: TextStyle(
                    color: SharedColors.whiteColor,
                    fontWeight: FontWeight.w600,
                    fontFamily: "poppin",
                    fontSize: width * 0.013167,
                  ),
                ),
              ),
              Container(
                height: width < 1000 ? height * 0.1 : (height * 0.1) * (2 / 3),
                alignment: Alignment.center,
                padding:
                    const EdgeInsets.symmetric(horizontal: 4, vertical: 10),
                child: Text(
                  "L",
                  style: TextStyle(
                    color: SharedColors.whiteColor,
                    fontWeight: FontWeight.w600,
                    fontFamily: "poppin",
                    fontSize: width * 0.013167,
                  ),
                ),
              ),
              Container(
                height: width < 1000 ? height * 0.1 : (height * 0.1) * (2 / 3),
                alignment: Alignment.center,
                padding:
                    const EdgeInsets.symmetric(horizontal: 4, vertical: 10),
                child: Text(
                  "+/-",
                  style: TextStyle(
                    color: SharedColors.whiteColor,
                    fontWeight: FontWeight.w600,
                    fontFamily: "poppin",
                    fontSize: width * 0.013167,
                  ),
                ),
              ),
              Container(
                height: width < 1000 ? height * 0.1 : (height * 0.1) * (2 / 3),
                alignment: Alignment.center,
                padding:
                    const EdgeInsets.symmetric(horizontal: 4, vertical: 10),
                child: Text(
                  "PTS",
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
                  alignment: Alignment.center,
                  height:
                      width < 1000 ? height * 0.15 : (height * 0.15) * (2 / 3),
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
                  height:
                      width < 1000 ? height * 0.15 : (height * 0.15) * (2 / 3),
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
                  height:
                      width < 1000 ? height * 0.15 : (height * 0.15) * (2 / 3),
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
                  height:
                      width < 1000 ? height * 0.15 : (height * 0.15) * (2 / 3),
                  child: Text(
                    "5",
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
                  height:
                      width < 1000 ? height * 0.15 : (height * 0.15) * (2 / 3),
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
                  height:
                      width < 1000 ? height * 0.15 : (height * 0.15) * (2 / 3),
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
              ],
            ),
        ],
      )),
    );
  }
}
