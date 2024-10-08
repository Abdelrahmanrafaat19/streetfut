import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fut/core/theme/colors.dart';
import 'package:fut/feature/home/presentation/views/widgets/drawer_contain.dart';
import 'package:fut/feature/login/presentation/views/login.dart';
import 'package:fut/feature/match_mode/presentation/views/play_mode.dart';
import 'package:fut/feature/pitches/presentation/views/pitches.dart';
import 'package:fut/feature/teams/presentation/views/teams.dart';
import 'package:fut/feature/tournament/presentation/views/tournment.dart';
import 'package:fut/feature/tournament/presentation/views/widgets/src/model/tournament_model.dart';

class DrawerHome extends StatefulWidget {
  const DrawerHome({super.key});

  @override
  State<DrawerHome> createState() => _DrawerHomeState();
}

class _DrawerHomeState extends State<DrawerHome> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Drawer(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assetes/images/backdrawer.png"),
          ),
        ),
        padding: EdgeInsets.symmetric(
            horizontal:
                width < 1000 ? width * 0.0321888 : (width * 0.0321888) / 2),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Image.asset(
                  'assetes/logo/logofut.png',
                  width: width < 1000
                      ? width * 0.05501
                      : (width * 0.05901) * (1 / 2),
                  height: width < 1000
                      ? height * 0.14744
                      : (height * 0.14744) * (1 / 2),
                  fit: BoxFit.cover,
                ),
              ),
              const Divider(
                color: Color(0xff696969),
              ),
              DrawerContain(
                imagePath: "assetes/images/playdrawer.png",
                text: "Play",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const PlayModeScreen(),
                  ));
                },
              ),
              const Divider(
                color: Color(0xff696969),
              ),
              DrawerContain(
                imagePath: "assetes/images/teamdrawer.png",
                text: "Teams",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const TeamsScreen(),
                  ));
                },
              ),
              const Divider(
                color: Color(0xff696969),
              ),
              DrawerContain(
                imagePath: "assetes/images/tournmentdrawer.png",
                text: "Tourtment",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const TournmentScreen(),
                  ));
                },
              ),
              const Divider(
                color: Color(0xff696969),
              ),
              DrawerContain(
                imagePath: "assetes/images/workoutdrawer.png",
                text: "Work Out",
                onTap: () {},
              ),
              const Divider(
                color: Color(0xff696969),
              ),
              DrawerContain(
                imagePath: "assetes/images/pointdrawer.png",
                text: "Points Earned",
                onTap: () {},
              ),
              const Divider(
                color: Color(0xff696969),
              ),
              DrawerContain(
                imagePath: "assetes/images/pitdrawer.png",
                text: "Pitches",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const PitchesScreens(),
                  ));
                },
              ),
              const Divider(
                color: Color(0xff696969),
              ),
              DrawerContain(
                imagePath: "assetes/images/refdrawer.png",
                text: "Referee Mode",
                onTap: () {},
              ),
              const Divider(
                color: Color(0xff696969),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ));
                },
                child: Container(
                  margin:
                      EdgeInsets.symmetric(vertical: width < 1000 ? 24 : 12),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assetes/svg/logout.svg",
                        width: width < 1000
                            ? width * 0.05364
                            : (width * 0.05364) * (2 / 3),
                        color: const Color(0xffE21212),
                        height: height * 0.074418,
                      ),
                      SizedBox(
                        width: width * 0.010729,
                      ),
                      Text(
                        "LogOut",
                        style: TextStyle(
                          color: SharedColors.whiteColor,
                          fontFamily: "poppin",
                          fontWeight: FontWeight.w700,
                          fontSize: width < 1000
                              ? width * 0.02145
                              : (width * 0.02145) * (2 / 3),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
