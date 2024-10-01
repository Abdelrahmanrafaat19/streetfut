import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/responsive_font.dart';
import 'package:fut/core/theme/colors.dart';

class GenderField extends StatefulWidget {
  const GenderField({super.key});

  @override
  State<GenderField> createState() => _GenderFieldState();
}

class _GenderFieldState extends State<GenderField> {
  String? gender;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width > 1000 ? width * 0.20386 : (width * 0.20386) * 1.5,
      child: DropdownButtonFormField<String>(
        hint: Text(
          "Geneder",
          style: TextStyle(
            color: SharedColors.greenColor,
            fontSize: getResponsiveFont(context, fontSize: 15),
            fontFamily: "poppin",
          ),
        ),
        onSaved: (val) => gender = val,
        value: gender,
        items: ['male', 'Female'].map<DropdownMenuItem<String>>(
          (String val) {
            return DropdownMenuItem(
              value: val,
              child: Text(
                val,
              ),
            );
          },
        ).toList(),
        onChanged: (val) {
          gender = val;
        },
        icon: const Icon(
          Icons.arrow_drop_down_sharp,
          size: 30,
        ),
        decoration: InputDecoration(
          fillColor: SharedColors.whiteColor,
          filled: true,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18.r),
              borderSide: BorderSide.none),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18.r),
              borderSide: BorderSide.none),
        ),
      ),
    );
  }
}
