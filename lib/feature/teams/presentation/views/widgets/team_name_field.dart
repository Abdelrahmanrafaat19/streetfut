import 'package:flutter/material.dart';
import 'package:fut/core/responsive_font.dart';
import 'package:fut/core/theme/colors.dart';
import 'package:fut/generated/l10n.dart';

class TeamNameField extends StatelessWidget {
  const TeamNameField({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width * 0.38090,
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
          hintText: "  ${S.of(context).nameofteam}",
          hintStyle: TextStyle(
              color: SharedColors.greenColor,
              fontSize: getResponsiveFont(context, fontSize: 15),
              fontFamily: "poppin"),
        ),
      ),
    );
  }
}
