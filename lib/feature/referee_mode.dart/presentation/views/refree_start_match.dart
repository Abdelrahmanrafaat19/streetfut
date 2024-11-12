import 'package:flutter/material.dart';
import 'package:fut/core/theme/colors.dart';
import 'package:fut/feature/referee_mode.dart/presentation/views/widget/refree_start_match_body.dart';

class RefreeStartMatch extends StatelessWidget {
  const RefreeStartMatch({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        backgroundColor: Colors.transparent,
        leadingWidth: width * 0.076866,
        toolbarHeight: height * 0.153255,
        leading: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          width: width * 0.056866,
          height: height * 0.123255,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: SharedColors.whiteColor,
              width: 1,
            ),
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assetes/images/Mohamed_Salah_2018.jpg"),
            ),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Marwan Mohsen",
              style: TextStyle(
                fontFamily: "poppin",
                fontWeight: FontWeight.bold,
                fontSize: width > 1000 ? width * 0.023605 : width * 0.023605,
                color: SharedColors.whiteColor,
              ),
            ),
            Text(
              "Referee Mode",
              style: TextStyle(
                fontFamily: "poppin",
                fontWeight: FontWeight.w500,
                fontSize: width > 1000 ? width * 0.019313 : width * 0.019313,
                color: SharedColors.greenColor,
              ),
            ),
          ],
        ),
      ),
      body: const RefreeStartMatchBody(),
    );
  }
}
