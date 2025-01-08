import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/responsive_font.dart';
import 'package:fut/core/theme/colors.dart';
import 'package:fut/feature/login/presentation/views/widgets/login_form.dart';
import 'package:fut/generated/l10n.dart';

class LoginContainer extends StatefulWidget {
  const LoginContainer({super.key});

  @override
  State<LoginContainer> createState() => _LoginContainerState();
}

class _LoginContainerState extends State<LoginContainer> {
  bool scure = true;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width * 0.4893,
      decoration: BoxDecoration(
        color: const Color(0xff4a4a4a).withOpacity(0.9),
        borderRadius: BorderRadius.circular(20.r),
        /*   boxShadow: const [
          BoxShadow(
            color: Color(0xFFA29213), // Hex color A29213
            blurRadius: 10.0, // Blur amount
            spreadRadius: 5.0, // Spread amount
            offset: Offset(3, 3), // X and Y offset
          ),
        ], */
      ),
      child: Column(
        children: [
          SizedBox(
            height: height * 0.0488,
          ),
          Text(
            S.of(context).welcome,
            style: TextStyle(
              fontSize: getResponsiveFont(context, fontSize: 36),
              fontWeight: FontWeight.w600,
              fontFamily: "poppin",
              color: SharedColors.whiteColor,
            ),
          ),
          SizedBox(
            height: height * 0.0488,
          ),
          Container(
            margin: EdgeInsets.only(
              left: width * 0.05213,
              right: width * 0.05213,
              bottom: height * 0.0364,
            ),
            child: LoginForm(
              scure: scure,
              onTap: () {
                setState(() {
                  scure = !scure;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
