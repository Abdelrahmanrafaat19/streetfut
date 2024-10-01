import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/component/default_button.dart';
import 'package:fut/core/responsive_font.dart';
import 'package:fut/core/theme/colors.dart';
import 'package:fut/feature/login/presentation/views/login.dart';
import 'package:fut/feature/sign_up/presentation/views/widgets/area_field.dart';
import 'package:fut/feature/sign_up/presentation/views/widgets/birthday_field.dart';
import 'package:fut/feature/sign_up/presentation/views/widgets/email_field.dart';
import 'package:fut/feature/sign_up/presentation/views/widgets/gender_field.dart';
import 'package:fut/feature/sign_up/presentation/views/widgets/mobile_phone-_ield.dart';
import 'package:fut/feature/sign_up/presentation/views/widgets/name_fields.dart';
import 'package:fut/feature/sign_up/presentation/views/widgets/nationatl_field.dart';
import 'package:fut/feature/sign_up/presentation/views/widgets/password_field.dart';
import 'package:fut/feature/sign_up/presentation/views/widgets/position_component.dart';
import 'package:fut/feature/sign_up/presentation/views/widgets/smaker_range.dart';
import 'package:fut/feature/sign_up/presentation/views/widgets/smaking_switch.dart';

class SignUpContainer extends StatefulWidget {
  const SignUpContainer({super.key});

  @override
  State<SignUpContainer> createState() => _SignUpContainerState();
}

class _SignUpContainerState extends State<SignUpContainer> {
  String? gender;
  bool gkToggel = false;
  bool defToggel = false;
  bool midToggel = false;
  bool fwdToggel = false;
  bool smokerToggel = false;
  dynamic value = 50;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width > 1000 ? width * 0.20386 : (width * 0.20386) * 1.5,
      height: height - (height * 0.2116),
      padding: EdgeInsets.symmetric(horizontal: width * 0.032188),
      decoration: BoxDecoration(
        color: const Color(0xff4a4a4a).withOpacity(0.9),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: height * 0.0488,
            ),
            Text(
              "Sign Up",
              style: TextStyle(
                fontSize: getResponsiveFont(context, fontSize: 36),
                fontWeight: FontWeight.w600,
                fontFamily: "poppin",
                color: SharedColors.whiteColor,
              ),
            ),
            SizedBox(
              height:
                  width < 1000 ? height * 0.0388 : (height * 0.0388) * (2 / 3),
            ),
            Text(
              "Personal Information",
              style: TextStyle(
                fontSize: width < 1000
                    ? width * 0.032188
                    : (width * 0.032188) * (2 / 3),
                fontWeight: FontWeight.w700,
                fontFamily: "poppin",
                color: SharedColors.greenColor,
              ),
            ),
            SizedBox(
              height:
                  width < 1000 ? height * 0.0388 : (height * 0.0388) * (2 / 3),
            ),
            const NameFields(),
            SizedBox(
              height:
                  width < 1000 ? height * 0.0388 : (height * 0.0388) * (2 / 3),
            ),
            const GenderField(),
            SizedBox(
              height:
                  width < 1000 ? height * 0.0388 : (height * 0.0388) * (2 / 3),
            ),
            const BirthdayField(),
            SizedBox(
              height:
                  width < 1000 ? height * 0.0388 : (height * 0.0388) * (2 / 3),
            ),
            const NationatlField(),
            SizedBox(
              height:
                  width < 1000 ? height * 0.0388 : (height * 0.0388) * (2 / 3),
            ),
            const AreaField(),
            SizedBox(
              height:
                  width < 1000 ? height * 0.0388 : (height * 0.0388) * (2 / 3),
            ),
            Text(
              "Jersey",
              style: TextStyle(
                fontSize: width < 1000
                    ? width * 0.032188
                    : (width * 0.032188) * (2 / 3),
                fontWeight: FontWeight.w700,
                fontFamily: "poppin",
                color: SharedColors.greenColor,
              ),
            ),
            SizedBox(
              height:
                  width < 1000 ? height * 0.0388 : (height * 0.0388) * (2 / 3),
            ),
            SizedBox(
              width: width * 0.39699,
              child: TextFormField(
                maxLines: 1,
                keyboardType: TextInputType.emailAddress,
                cursorColor: SharedColors.greyFieldsColor,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.zero,
                  filled: true,
                  fillColor: SharedColors.whiteColor,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "  Name of Jersey",
                  hintStyle: TextStyle(
                      color: SharedColors.greenColor,
                      fontSize: getResponsiveFont(context, fontSize: 15),
                      fontFamily: "poppin"),
                ),
              ),
            ),
            SizedBox(
              height:
                  width < 1000 ? height * 0.0388 : (height * 0.0388) * (2 / 3),
            ),
            SizedBox(
              width: width * 0.39699,
              child: TextFormField(
                maxLines: 1,
                keyboardType: TextInputType.emailAddress,
                cursorColor: SharedColors.greyFieldsColor,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.zero,
                  filled: true,
                  fillColor: SharedColors.whiteColor,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "  Number of Jersey",
                  hintStyle: TextStyle(
                      color: SharedColors.greenColor,
                      fontSize: getResponsiveFont(context, fontSize: 15),
                      fontFamily: "poppin"),
                ),
              ),
            ),
            SizedBox(
              height:
                  width < 1000 ? height * 0.0388 : (height * 0.0388) * (2 / 3),
            ),
            Text(
              "Preferred Position",
              style: TextStyle(
                fontSize: width < 1000
                    ? width * 0.032188
                    : (width * 0.032188) * (2 / 3),
                fontWeight: FontWeight.w700,
                fontFamily: "poppin",
                color: SharedColors.greenColor,
              ),
            ),
            SizedBox(
              height:
                  width < 1000 ? height * 0.0188 : (height * 0.0188) * (2 / 3),
            ),
            Text(
              "Choose 2 Only",
              style: TextStyle(
                fontSize: width < 1000
                    ? width * 0.02146
                    : (width * 0.02146) * (2 / 3),
                fontWeight: FontWeight.normal,
                fontFamily: "poppin",
                color: SharedColors.whiteColor,
              ),
            ),
            SizedBox(
              height:
                  width < 1000 ? height * 0.0188 : (height * 0.0188) * (2 / 3),
            ),
            PositionComponent(
              positionText: "GK",
              checkValue: gkToggel,
              colorContainer: const Color(0xffF9BC0D),
              onChanged: (p0) {
                setState(() {
                  gkToggel = p0!;
                });
              },
            ),
            SizedBox(
              height:
                  width < 1000 ? height * 0.0188 : (height * 0.0188) * (2 / 3),
            ),
            PositionComponent(
              positionText: "DEF",
              checkValue: defToggel,
              colorContainer: const Color(0xff134CA2),
              onChanged: (p0) {
                setState(() {
                  defToggel = p0!;
                });
              },
            ),
            SizedBox(
              height:
                  width < 1000 ? height * 0.0188 : (height * 0.0188) * (2 / 3),
            ),
            PositionComponent(
              positionText: "MID",
              checkValue: midToggel,
              colorContainer: const Color(0xff8DC63F),
              onChanged: (p0) {
                setState(() {
                  midToggel = p0!;
                });
              },
            ),
            SizedBox(
              height:
                  width < 1000 ? height * 0.0188 : (height * 0.0188) * (2 / 3),
            ),
            PositionComponent(
              positionText: "FWD",
              checkValue: fwdToggel,
              colorContainer: const Color(0xffE21212),
              onChanged: (p0) {
                setState(() {
                  fwdToggel = p0!;
                });
              },
            ),
            SizedBox(
              height:
                  width < 1000 ? height * 0.0188 : (height * 0.0188) * (2 / 3),
            ),
            SmakingSwitch(
              toggle: smokerToggel,
              onChanged: (p0) {
                setState(() {
                  smokerToggel = p0;
                });
              },
            ),
            SizedBox(
              height:
                  width < 1000 ? height * 0.0188 : (height * 0.0188) * (2 / 3),
            ),
            SmakerRange(
              value: value,
              onChange: (p0) {
                setState(() {
                  value = p0;
                });
              },
            ),
            SizedBox(
              height:
                  width < 1000 ? height * 0.0188 : (height * 0.0188) * (2 / 3),
            ),
            const MobilePhonefield(),
            SizedBox(
              height:
                  width < 1000 ? height * 0.0188 : (height * 0.0188) * (2 / 3),
            ),
            const Emailfield(),
            SizedBox(
              height:
                  width < 1000 ? height * 0.0188 : (height * 0.0188) * (2 / 3),
            ),
            const PasswordField(),
            SizedBox(
              height: height * 0.1,
            ),
            SizedBox(
              width: width * 0.195,
              child: defaultButton(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ));
                  },
                  text: "Done",
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
            )
          ],
        ),
      ),
    );
  }
}
