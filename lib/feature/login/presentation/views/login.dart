import 'package:flutter/material.dart';
import 'package:fut/feature/login/presentation/views/widgets/login_container.dart';
import 'package:video_player/video_player.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late VideoPlayerController _controller;
  @override
  void initState() {
    _controller = VideoPlayerController.asset('assetes/vedio/loginpage.mp4')
      ..initialize().then((_) {
        _controller.setLooping(true); // Loop the video
        _controller.play(); // Start playing the video
        setState(() {}); // Update UI when the video is initialized
      });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SizedBox(
        width: width,
        height: height,
        /*  decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              "assetes/images/loginBackGround.png",
            ),
          ),
        ), */
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(
                width: width,
                height: height,
                child: Stack(
                  children: [
                    SizedBox.expand(
                      child: FittedBox(
                        fit: BoxFit.cover,
                        child: SizedBox(
                          width: _controller.value.size.width,
                          height: _controller.value.size.height,
                          child: VideoPlayer(_controller),
                        ),
                      ),
                    ),

                    /*   Image.asset(
                      'assetes/images/loginBackGround.png',
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    ), */
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
