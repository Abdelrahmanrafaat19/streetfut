import 'package:flutter/material.dart';
import 'package:fut/core/responsive_font.dart';
import 'package:fut/core/theme/colors.dart';

class NameFields extends StatelessWidget {
  const NameFields({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
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
                hintText: "  First Name",
                hintStyle: TextStyle(
                    color: SharedColors.greenColor,
                    fontSize: getResponsiveFont(context, fontSize: 15),
                    fontFamily: "poppin"),
              ),
            ),
          ),
          SizedBox(
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
                hintText: "  Last Name",
                hintStyle: TextStyle(
                    color: SharedColors.greenColor,
                    fontSize: getResponsiveFont(context, fontSize: 15),
                    fontFamily: "poppin"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
