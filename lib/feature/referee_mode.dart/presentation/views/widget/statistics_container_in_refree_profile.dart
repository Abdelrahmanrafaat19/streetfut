import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/component/titel_container.dart';
import 'package:fut/core/theme/colors.dart';
import 'package:fut/feature/referee_mode.dart/presentation/views/widget/column_data_in_statistic_container.dart';

class StatisticsContainerInRefreeProfile extends StatelessWidget {
  const StatisticsContainerInRefreeProfile({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      width: width < 1000 ? width * 0.414163 : width * 0.414163,
      height: width < 1000 ? height * 0.362791 : (height * 0.362791) * (2 / 3),
      decoration: BoxDecoration(
        color: SharedColors.blackColor.withOpacity(0.7),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Column(
        children: [
          TitelContainer(
            title: "Statistics",
            width: width < 1000 ? width * 0.414163 : width * 0.414163,
          ),
          Container(
            height: width < 1000
                ? (height * 0.362791) - 51.h
                : ((height * 0.362791) * (2 / 3)) - 51.h,
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const ColumnDataInStatisticContainer(
                  name: "Matches Played",
                  path: "assetes/svg/playground.svg",
                  count: 15,
                ),
                Container(
                  width: 3,
                  height: width < 1000
                      ? height * 0.1186046
                      : (height * 0.1186046) * (2 / 3),
                  decoration:
                      const BoxDecoration(color: SharedColors.whiteColor),
                ),
                const ColumnDataInStatisticContainer(
                  name: "red Card",
                  path: "assetes/svg/redcard.svg",
                  count: 15,
                ),
                Container(
                  width: 3,
                  height: width < 1000
                      ? height * 0.1186046
                      : (height * 0.1186046) * (2 / 3),
                  decoration:
                      const BoxDecoration(color: SharedColors.whiteColor),
                ),
                const ColumnDataInStatisticContainer(
                  name: "yellow Card",
                  path: "assetes/svg/yellowcart.svg",
                  count: 15,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
