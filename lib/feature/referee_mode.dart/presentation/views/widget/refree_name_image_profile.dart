import 'package:flutter/material.dart';
import 'package:fut/core/theme/colors.dart';

class RefreeNameImageProfile extends StatelessWidget {
  const RefreeNameImageProfile({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Row(
      children: [
        Container(
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
        const SizedBox(
          width: 10,
        ),
        Column(
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
              "ID : 259494462356",
              style: TextStyle(
                fontFamily: "poppin",
                fontWeight: FontWeight.w500,
                fontSize: width > 1000 ? width * 0.019313 : width * 0.019313,
                color: SharedColors.greenColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
