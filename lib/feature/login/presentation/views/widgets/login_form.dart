import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/component/default_button.dart';
import 'package:fut/core/responsive_font.dart';
import 'package:fut/core/theme/colors.dart';
import 'package:fut/feature/home/presentation/views/home_screen.dart';
import 'package:fut/feature/login/presentation/views/widgets/sign_up_row.dart';

class LoginForm extends StatefulWidget {
  final void Function()? onTap;
  final bool scure;
  const LoginForm({super.key, this.onTap, required this.scure});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    double height = MediaQuery.of(context).size.height;

    return Column(
      children: [
        SizedBox(
          height: height * 0.10232,
          child: TextFormField(
            maxLines: 1,
            keyboardType: TextInputType.emailAddress,
            cursorColor: SharedColors.greyFieldsColor,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.zero,
              filled: true,
              prefixIcon: Icon(
                Icons.email,
                color: SharedColors.greenColor,
                size: getResponsiveFont(context, fontSize: 20),
              ),
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
              hintText: "Email / Phone Number",
              hintStyle: TextStyle(
                  color: SharedColors.greenColor,
                  fontSize: getResponsiveFont(context, fontSize: 15),
                  fontFamily: "poppin"),
            ),
          ),
        ),
        const SizedBox(
          height: 15 /*  height * 0.04126 */,
        ),
        SizedBox(
          height: height * 0.10232,
          child: TextFormField(
            // keyboardType: TextInputType.emailAddress,
            cursorColor: SharedColors.greyFieldsColor,
            obscureText: widget.scure,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.zero,
              filled: true,
              fillColor: SharedColors.whiteColor,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10.r),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10.r),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10.r),
              ),
              suffixIcon: InkWell(
                onTap: widget.onTap,
                child: widget.scure == true
                    ? const Icon(
                        Icons.visibility_off,
                        color: SharedColors.greenColor,
                      )
                    : const Icon(
                        Icons.visibility,
                        color: SharedColors.greenColor,
                      ),
              ),
              prefixIcon: Icon(
                Icons.lock,
                color: SharedColors.greenColor,
                size: getResponsiveFont(context, fontSize: 20),
              ),
              hintText: "Password",
              hintStyle: TextStyle(
                color: SharedColors.greenColor,
                fontSize: getResponsiveFont(context, fontSize: 15),
                fontFamily: "poppin",
              ),
            ),
          ),
        ),
        SizedBox(
          height: height * 0.04884,
        ),
        const SignUpRow(),
        SizedBox(
          height: height * 0.04884,
        ),
        SizedBox(
          width: width * 0.195,
          height: height * 0.0953,
          child: defaultButton(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                );
              },
              text: "let's play",
              gradient: const LinearGradient(colors: [
                Color(0xff9A8E14),
                Color(0xff95A324),
                Color(0xff90B834)
              ]),
              color: SharedColors.greenColor,
              fontFamily: "poppin",
              textcolor: SharedColors.whiteColor,
              fontSize: getResponsiveFont(context, fontSize: 25),
              raduis: 10.r),
        )
      ],
    );
  }
}
