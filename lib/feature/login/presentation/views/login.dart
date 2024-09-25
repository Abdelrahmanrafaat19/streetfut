import 'package:flutter/material.dart';
import 'package:fut/feature/login/presentation/views/widgets/login_container.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              "assetes/images/loginBackGround.png",
            ),
          ),
        ),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(
                width: width,
                height: height,
                child: Stack(
                  children: [
                    Image.asset(
                      'assetes/images/loginBackGround.png',
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    ),
                    Positioned(
                      top: height * 0.0485,
                      left: width * 0.04077,

                      // right: width * 0.06557,
                      child: Image.asset(
                        "assetes/logo/logofut.png",
                        width: width * 0.0697,
                        height: height * 0.2116,
                      ),
                    ),
                    Positioned(
                      top: height * 0.13488,
                      left: width * 0.2554,
                      right: width * 0.2554,
                      child: const LoginContainer(),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
