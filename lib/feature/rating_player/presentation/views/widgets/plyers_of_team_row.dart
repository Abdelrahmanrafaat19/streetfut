import 'package:flutter/material.dart';
import 'package:fut/core/theme/colors.dart';
import 'package:fut/feature/rating_player/presentation/views/widgets/increment_decrement_points_row.dart';

class PlyersOfTeamRow extends StatelessWidget {
  final String name;
  const PlyersOfTeamRow({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Row(
      children: [
        Expanded(
          child: Text(
            name,
            style: TextStyle(
              fontFamily: "poppin",
              fontWeight: FontWeight.w600,
              fontSize: width * 0.0128755,
              color: SharedColors.midGreenColor,
            ),
          ),
        ),
        SizedBox(
          width: width * 0.0465116,
        ),
        const Expanded(flex: 4, child: IncrementDecrementPointsRow())
      ],
    );
  }
}
