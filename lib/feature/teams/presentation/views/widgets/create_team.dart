import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fut/core/component/custam_drop_down_field.dart';
import 'package:fut/core/component/default_button.dart';
import 'package:fut/core/responsive_font.dart';
import 'package:fut/core/theme/colors.dart';
import 'package:fut/feature/teams/presentation/views/widgets/team_name_field.dart';
import 'package:fut/generated/l10n.dart';

class CreateTeam extends StatefulWidget {
  const CreateTeam({super.key});

  @override
  State<CreateTeam> createState() => _CreateTeamState();
}

class _CreateTeamState extends State<CreateTeam> {
  @override
  Widget build(BuildContext context) {
    List<String> dayes = [
      S.of(context).satday,
      S.of(context).sunday,
      S.of(context).monday,
      S.of(context).tuethday,
      S.of(context).wensday,
      S.of(context).thurtday,
      S.of(context).friday
    ];

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      width: double.infinity,
      height: width < 1000 ? height * 0.78 : height * (3 / 4),
      margin: EdgeInsets.symmetric(horizontal: width * 0.042918),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                vertical: width < 1000
                    ? (height * 0.09302) / 2
                    : ((height * 0.09302) * (2 / 3)) / 2,
              ),
              child: Row(
                children: [
                  Text(
                    S.of(context).uploadphoto,
                    style: TextStyle(
                      color: SharedColors.whiteColor,
                      fontFamily: "poppin",
                      fontWeight: FontWeight.w700,
                      fontSize: width * 0.021459,
                    ),
                  ),
                  SizedBox(
                    width: width * 0.24463,
                  ),
                  SvgPicture.asset(
                    "assetes/svg/pickedimage.svg",
                    width: width < 1000
                        ? width * 0.053648
                        : (width * 0.053648) * (2 / 3),
                    height: width < 1000
                        ? height * 0.116279
                        : (height * 0.116279) * (2 / 3),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                vertical: width < 1000
                    ? (height * 0.09302) / 2
                    : ((height * 0.09302) * (2 / 3)) / 2,
              ),
              child: Row(
                children: [
                  Text(
                    S.of(context).teamname,
                    style: TextStyle(
                      color: SharedColors.whiteColor,
                      fontFamily: "poppin",
                      fontWeight: FontWeight.w700,
                      fontSize: width * 0.021459,
                    ),
                  ),
                  SizedBox(
                    width: width * 0.143776,
                  ),
                  const TeamNameField()
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                vertical: width < 1000
                    ? (height * 0.09302) / 2
                    : ((height * 0.09302) * (2 / 3)) / 2,
              ),
              child: Row(
                children: [
                  Text(
                    S.of(context).preferredplayingdays,
                    style: TextStyle(
                      color: SharedColors.whiteColor,
                      fontFamily: "poppin",
                      fontWeight: FontWeight.w700,
                      fontSize: width * 0.021459,
                    ),
                  ),
                  SizedBox(
                    width: width * 0.023776,
                  ),
                  SizedBox(
                    width: width * 0.58090,
                    height: width < 1000
                        ? height * 0.10930
                        : (height * 0.10930) * (2 / 3),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: dayes.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          alignment: Alignment.center,
                          width: width * 0.05901,
                          height: width < 1000
                              ? height * 0.10930
                              : (height * 0.10930) * (2 / 3),
                          decoration: BoxDecoration(
                            color: SharedColors.greenColor,
                            borderRadius: BorderRadius.circular(5.r),
                          ),
                          child: Text(
                            dayes[index],
                            style: TextStyle(
                              color: SharedColors.whiteColor,
                              fontFamily: "poppin",
                              fontWeight: FontWeight.w700,
                              fontSize: width * 0.019313,
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                vertical: width < 1000
                    ? (height * 0.09302) / 2
                    : ((height * 0.09302) * (2 / 3)) / 2,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S.of(context).preferredplayingareas,
                    style: TextStyle(
                      color: SharedColors.whiteColor,
                      fontFamily: "poppin",
                      fontWeight: FontWeight.w700,
                      fontSize: width * 0.021459,
                    ),
                  ),
                  SizedBox(
                    width: width * 0.023776,
                  ),
                  SizedBox(
                    width: width * 0.28969,
                    child: Column(
                      children: [
                        CustamDropDwonField(
                          text: S.of(context).primaryarea,
                          data: const ["New Cairo", "Naser City"],
                        ),
                        SizedBox(
                          height: width < 1000
                              ? height * 0.037209
                              : (height * 0.037209) * (2 / 3),
                        ),
                        CustamDropDwonField(
                          text: S.of(context).primaryarea,
                          data: const ["New Cairo", "Naser City"],
                        ),
                        SizedBox(
                          height: width < 1000
                              ? height * 0.037209
                              : (height * 0.037209) * (2 / 3),
                        ),
                        CustamDropDwonField(
                          text: S.of(context).primaryarea,
                          data: const ["New Cairo", "Naser City"],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: width < 1000 ? width * 0.195 : (width * 0.195) * (2 / 3),
              child: defaultButton(
                  onTap: () {
                    /*    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    )); */
                  },
                  text: S.of(context).create,
                  gradient: const LinearGradient(colors: [
                    Color(0xff9A8E14),
                    Color(0xff95A324),
                    Color(0xff90B834)
                  ]),
                  paddingtb: height * 0.01325,
                  color: SharedColors.greenColor,
                  fontFamily: "poppin",
                  textcolor: SharedColors.whiteColor,
                  fontSize: getResponsiveFont(context, fontSize: 25),
                  raduis: 10.r),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
