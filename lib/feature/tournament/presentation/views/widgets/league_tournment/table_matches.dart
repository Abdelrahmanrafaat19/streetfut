import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/theme/colors.dart';
import 'package:fut/generated/l10n.dart';

class TableMatches extends StatelessWidget {
  const TableMatches({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      width: width * 0.48605,
      height: width < 1000 ? height * 0.7 : height * 0.73,
      decoration: BoxDecoration(
        color: const Color(0xff3D3F41).withOpacity(0.7),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(width < 1000 ? 4 : 8),
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
              S.of(context).matches,
              style: TextStyle(
                color: SharedColors.whiteColor,
                fontFamily: "poppin",
                fontWeight: FontWeight.bold,
                fontSize: width * 0.023605,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: width * 0.013948),
            width: width * 0.48605,
            height: width < 1000
                ? (height * 0.7) - (height * 0.09302)
                : (height * 0.73) - ((height * 0.09302) * (2 / 3)),
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return SizedBox(
                  height: height * 0.153488,
                  width: width * 0.48605,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Elahlawya ",
                                style: TextStyle(
                                  fontFamily: "poppin",
                                  fontWeight: FontWeight.w600,
                                  fontSize: width * 0.0150214,
                                  color: SharedColors.whiteColor,
                                ),
                              ),
                              Image(
                                width: width * 0.024678 * 2,
                                height: height * 0.069767 * 2,
                                image: const AssetImage(
                                    "assetes/images/team a.png"),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "10JUN",
                                style: TextStyle(
                                  color: SharedColors.whiteColor,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "poppin",
                                  fontSize: width * 0.0150214,
                                ),
                              ),
                              Text(
                                "7:00 PM",
                                style: TextStyle(
                                  color: SharedColors.whiteColor,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "poppin",
                                  fontSize: width * 0.0150214,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image(
                                width: width * 0.024678 * 2,
                                height: height * 0.069767 * 2,
                                image: const AssetImage(
                                    "assetes/images/team a.png"),
                              ),
                              Text(
                                " Elahlawya",
                                style: TextStyle(
                                  fontFamily: "poppin",
                                  fontWeight: FontWeight.w600,
                                  fontSize: width * 0.0150214,
                                  color: SharedColors.whiteColor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      index != 4
                          ? const Divider(
                              color: SharedColors.dividorTableColor,
                              height: 1,
                            )
                          : const SizedBox()
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
