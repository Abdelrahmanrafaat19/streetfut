import 'package:flutter/material.dart';
import 'package:fut/core/theme/colors.dart';
import 'package:fut/feature/sign_up/presentation/views/sig_up_screen.dart';

class SignUpRow extends StatelessWidget {
  const SignUpRow({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Dont’t have an account yet?",
          style: TextStyle(
            fontSize: width * 0.01716,
            fontWeight: FontWeight.normal,
            fontFamily: "poppin",
            color: SharedColors.whiteColor,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const SigUpScreen(),
            ));
          },
          child: Text(
            "SignUp",
            style: TextStyle(
              fontSize: width * 0.01716,
              fontWeight: FontWeight.bold,
              fontFamily: "poppin",
              color: const Color(0xff98EE22),
            ),
          ),
        ),
      ],
    );
  }
}
