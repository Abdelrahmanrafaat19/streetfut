import 'package:flutter/material.dart';
import 'package:fut/core/component/custam_app_bar.dart';
import 'package:fut/core/get_width_height_method.dart';
import 'package:fut/core/theme/colors.dart';
import 'package:fut/feature/match_mode/presentation/views/widgets/back_button.dart';
import 'package:fut/feature/match_mode/presentation/views/widgets/play_mode_body.dart';

class PlayModeScreen extends StatefulWidget {
  const PlayModeScreen({super.key});

  @override
  State<PlayModeScreen> createState() => _PlayModeScreenState();
}

class _PlayModeScreenState extends State<PlayModeScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    debugPrint("$width   $height");

    return Scaffold(
      appBar: AppBar(
        leadingWidth: width < 950 ? (width * 0.550) : (width * 0.550) * (3 / 4),
        leading: const CustamAppBar(),
        bottom: CustamBackButton(
          height: height * getHeight(context, 40),
          child: Row(
            children: [
              Icon(
                Icons.arrow_back_ios_new_outlined,
                color: SharedColors.whiteColor,
                size: width * getWidth(context, 30),
              ),
              Text(
                'Back',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'TimesNewRoman',
                  color: Colors.white,
                  fontSize: width * getWidth(context, 16),
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
      body: PlayModeBody(),
    );
  }
}
