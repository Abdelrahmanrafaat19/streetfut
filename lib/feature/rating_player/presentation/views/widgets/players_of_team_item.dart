import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/theme/colors.dart';
import 'package:fut/feature/rating_player/presentation/views/widgets/plyers_of_team_row.dart';

class PlayersOfTeamItem extends StatefulWidget {
  final String playerName;
  const PlayersOfTeamItem({super.key, required this.playerName});

  @override
  State<PlayersOfTeamItem> createState() => _PlayersOfTeamItemState();
}

class _PlayersOfTeamItemState extends State<PlayersOfTeamItem> {
  List points = ["PAC", "PAS", "PHY", "SHO", "DRI", "DEF"];

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: width * 0.202789,
              height: height * 0.07906,
              decoration: BoxDecoration(
                color: SharedColors.whiteColor,
                borderRadius: BorderRadius.circular(10.r),
              ),
              alignment: Alignment.center,
              child: Text(
                widget.playerName,
                style: TextStyle(
                  fontFamily: "poppin",
                  fontWeight: FontWeight.w600,
                  fontSize: width * 0.01609,
                  color: SharedColors.blackColor,
                ),
              ),
            ),
            SizedBox(
              width: width * 0.051459,
            ),
            SizedBox(
              width: width * 0.643776,
              height: height * 0.186046,
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: width < 1000 ? 10 / 2 : 7 / 2,
                    crossAxisCount: 3,
                    crossAxisSpacing: width * 0.03296,
                    mainAxisSpacing: 10),
                itemCount: points.length,
                itemBuilder: (context, index) {
                  return PlyersOfTeamRow(
                    name: points[index],
                  );
                },
              ),
            )
          ],
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            borderRadius:
                const BorderRadius.vertical(bottom: Radius.circular(20)),
            border: Border.all(
              color: const Color(0xff525151),
              width: 1,
            ),
          ),
        )
      ],
    );
  }
}
