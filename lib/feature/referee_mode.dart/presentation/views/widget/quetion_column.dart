import 'package:flutter/material.dart';
import 'package:fut/core/theme/colors.dart';

class QuetionColumn extends StatefulWidget {
  const QuetionColumn({super.key});

  @override
  State<QuetionColumn> createState() => _QuetionColumnState();
}

class _QuetionColumnState extends State<QuetionColumn> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Text(
          "Foul or not Foul ?",
          style: TextStyle(
            fontFamily: "poppin",
            fontWeight: FontWeight.bold,
            fontSize: width > 1000 ? width * 0.023605 : width * 0.023605,
            color: SharedColors.whiteColor,
          ),
        ),
        SizedBox(
          height: height * 0.038837,
        ),
        SizedBox(
          width: width * 0.175965,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "FOUL",
                style: TextStyle(
                  fontFamily: "poppin",
                  fontWeight: FontWeight.bold,
                  fontSize: width > 1000 ? width * 0.023605 : width * 0.023605,
                  color: SharedColors.whiteColor,
                ),
              ),
              Checkbox(
                value: true,
                activeColor: SharedColors.whiteColor,
                side: BorderSide.none,
                fillColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                  // Color when the checkbox is not selected (unchecked)
                  return SharedColors.whiteColor;
                }),
                checkColor: SharedColors.greenColor,
                onChanged: (value) {},
              )
            ],
          ),
        ),
        SizedBox(
          width: width * 0.175965,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "NOT FOUL",
                style: TextStyle(
                  fontFamily: "poppin",
                  fontWeight: FontWeight.bold,
                  fontSize: width > 1000 ? width * 0.023605 : width * 0.023605,
                  color: SharedColors.whiteColor,
                ),
              ),
              Checkbox(
                value: true,
                activeColor: SharedColors.whiteColor,
                side: BorderSide.none,
                fillColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                  // Color when the checkbox is not selected (unchecked)
                  return SharedColors.whiteColor;
                }),
                checkColor: SharedColors.greenColor,
                onChanged: (value) {},
              )
            ],
          ),
        )
      ],
    );
  }
}
