import 'package:flutter/material.dart';
import 'package:fut/core/responsive_font.dart';
import 'package:fut/core/theme/colors.dart';

class Emailfield extends StatefulWidget {
  const Emailfield({super.key});

  @override
  State<Emailfield> createState() => _EmailfieldState();
}

class _EmailfieldState extends State<Emailfield> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;

    return SizedBox(
      width: width * 0.20386,
      child: TextFormField(
        maxLines: 1,
        keyboardType: TextInputType.emailAddress,
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
          hintText: "  Email",
          hintStyle: TextStyle(
              color: SharedColors.greenColor,
              fontSize: getResponsiveFont(context, fontSize: 15),
              fontFamily: "poppin"),
        ),
      ),
    );
  }
}
