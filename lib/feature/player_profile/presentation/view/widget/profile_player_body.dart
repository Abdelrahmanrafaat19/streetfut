import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/feature/player_profile/presentation/view/widget/achievements.dart';
import 'package:fut/feature/player_profile/presentation/view/widget/joined_team.dart';
import 'package:fut/feature/player_profile/presentation/view/widget/name_of_player.dart';
import 'package:fut/feature/player_profile/presentation/view/widget/personal_info_container.dart';
import 'package:fut/feature/player_profile/presentation/view/widget/player_card.dart';
import 'package:fut/feature/player_profile/presentation/view/widget/statistics_player_profile.dart';

class ProfilePlayerBody extends StatelessWidget {
  const ProfilePlayerBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: double.infinity,
      height: width < 1000 ? height * 0.85 : height * 0.87,
      // margin: EdgeInsets.symmetric(horizontal: width * 0.042918),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: width < 1000 ? width * 0.633047 : width * 0.643776,
            child: ListView(
              children: [
                const NameOfPlayer(),
                SizedBox(
                  height: 20.h,
                ),
                const PersonalInfoContainer(),
                SizedBox(
                  height: 20.h,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [StatisticsPlayerProfile(), JoinedTeam()],
                ),
                SizedBox(
                  height: 20.h,
                ),
                const AchievementsPlayer()
              ],
            ),
          ),
          // const PlayerCard()
        ],
      ),
    );
  }
}
