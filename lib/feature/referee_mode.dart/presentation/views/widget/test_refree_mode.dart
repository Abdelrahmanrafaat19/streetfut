import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/theme/colors.dart';
import 'package:fut/feature/referee_mode.dart/presentation/views/widget/next_button.dart';
import 'package:fut/feature/referee_mode.dart/presentation/views/widget/quetion_column.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
// import 'package:video_player/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class TestRefreeMode extends StatefulWidget {
  const TestRefreeMode({super.key});

  @override
  State<TestRefreeMode> createState() => _TestRefreeModeState();
}

class _TestRefreeModeState extends State<TestRefreeMode> {
  // late VideoPlayerController _controller;
  late YoutubePlayerController _controller;

  @override
  void initState() {
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(
          "https://youtube.com/shorts/9wi3qP2mCM4?si=RPxA5sk-yT-IExN6")!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
        loop: true,
      ),
    );
    super.initState();

    /*  _controller = VideoPlayerController.networkUrl(
        Uri.parse('https://youtube.com/shorts/NM8GBnYLDTQ?si=C7LHWVz2GG1JpZmD'))
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      }); */
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose of the controller when not in use
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      width: double.infinity,
      height: width < 1000 ? height * 0.8 : height * 0.87,
      margin: EdgeInsets.symmetric(horizontal: width * 0.042918),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: width < 1000 ? width * 0.032790 : 27,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: width * 0.561158,
                  height: width < 1000
                      ? height * 0.56279
                      : (height * 0.56279) * (3 / 4),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: const GradientBoxBorder(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xff9A8E14),
                          Color(0xff95A324),
                          Color(0xff90B834),
                        ],
                      ),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  // ignore: unnecessary_null_comparison
                  child: _controller.value != null
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(15.r),
                          child: YoutubePlayer(
                            aspectRatio: 16 / 9,
                            controller: _controller,
                            showVideoProgressIndicator: true,
                            onReady: () => debugPrint("this is ready"),
                          ))
                      : Container(
                          width: 100,
                          height: 100,
                          color: Colors.red,
                        ),
                ),
                SizedBox(
                  width: width * 0.04506,
                ),
                SizedBox(
                  height: width < 1000
                      ? height * 0.56279
                      : (height * 0.56279) * (3 / 4),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const QuetionColumn(),
                      Text(
                        "2/10",
                        style: TextStyle(
                          fontFamily: "poppin",
                          fontWeight: FontWeight.bold,
                          fontSize: width > 1000
                              ? width * 0.023605
                              : width * 0.023605,
                          color: SharedColors.whiteColor,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: height * 0.069767,
            ),
            const NextButton(),
            SizedBox(
              height: width < 1000 ? width * 0.032790 : 27,
            ),
          ],
        ),
      ),
    );
  }
}
