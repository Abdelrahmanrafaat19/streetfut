import 'package:flutter/material.dart';
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
      body: PlayModeBody(),
    );
  }
}
