import 'package:flutter/material.dart';
import 'package:fut/core/responsive_font.dart';
import 'package:fut/core/theme/colors.dart';

class CountOfTeamsInTournmentField extends StatefulWidget {
  const CountOfTeamsInTournmentField({super.key});

  @override
  State<CountOfTeamsInTournmentField> createState() =>
      _CountOfTeamsInTournmentFieldState();
}

class _CountOfTeamsInTournmentFieldState
    extends State<CountOfTeamsInTournmentField> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * 0.10232,
      width: width * 0.107296,
      child: TextFormField(
        maxLines: 1,
        keyboardType: TextInputType.number,
        cursorColor: SharedColors.greyFieldsColor,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.zero,
          filled: true,
          fillColor: SharedColors.whiteColor,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          ),
          hintStyle: TextStyle(
            color: SharedColors.greenColor,
            fontSize: getResponsiveFont(context, fontSize: 15),
            fontFamily: "poppin",
          ),
        ),
      ),
    );
  }
}
