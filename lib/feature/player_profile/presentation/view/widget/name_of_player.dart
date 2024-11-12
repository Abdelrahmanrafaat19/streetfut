import 'package:flutter/material.dart';
import 'package:fut/core/theme/colors.dart';
import 'package:fut/feature/player_profile/presentation/view/widget/Button_row_profile_player.dart';

class NameOfPlayer extends StatefulWidget {
  const NameOfPlayer({super.key});

  @override
  State<NameOfPlayer> createState() => _NameOfPlayerState();
}

class _NameOfPlayerState extends State<NameOfPlayer> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assetes/images/Mohamed_Salah_2018.jpg"),
                  ),
                  shape: BoxShape.circle),
              width: width * 0.044377,
              height: height * 0.206279,
            ),
            SizedBox(
              width: width < 1000
                  ? width * 0.010729
                  : (width * 0.010729) * (2 / 3),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Ahmed Belal",
                  style: TextStyle(
                    color: SharedColors.whiteColor,
                    fontFamily: "poppin",
                    fontWeight: FontWeight.w800,
                    fontSize: width * 0.021459,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Player ID: ",
                      style: TextStyle(
                        color: SharedColors.greenColor,
                        fontFamily: "poppin",
                        fontWeight: FontWeight.w600,
                        fontSize: width < 1000
                            ? width * 0.017167
                            : (width * 0.017167) * (2 / 3),
                      ),
                    ),
                    Text(
                      "AhmedBelal11",
                      style: TextStyle(
                        color: SharedColors.whiteColor,
                        fontFamily: "poppin",
                        fontWeight: FontWeight.w600,
                        fontSize: width < 1000
                            ? width * 0.017167
                            : (width * 0.017167) * (2 / 3),
                      ),
                    ),
                  ],
                ),
                Text(
                  "Ahlawe Ana wel fkhr lyaa 🦅🦅❤️",
                  style: TextStyle(
                    color: SharedColors.whiteColor,
                    fontFamily: "poppin",
                    fontWeight: FontWeight.normal,
                    fontSize: width * 0.013948,
                  ),
                ),
              ],
            )
          ],
        ),
        const ButtonRowProfilePlayer()
      ],
    );
  }
}
