import 'package:flutter/material.dart';
import 'package:fut/feature/pitches/presentation/views/widgets/pitches_details_body.dart';

class PitchesDetailsScreen extends StatefulWidget {
  const PitchesDetailsScreen({super.key});

  @override
  State<PitchesDetailsScreen> createState() => _PitchesDetailsScreenState();
}

class _PitchesDetailsScreenState extends State<PitchesDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(
      //   leading: Image.asset(
      //     "assetes/logo/logofut.png",
      //     height: 61.h,
      //   ),
      // ),
      body: PitchesDetailsBody(),
    );
  }
}
