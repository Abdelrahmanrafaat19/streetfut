import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/responsive_font.dart';
import 'package:fut/core/theme/colors.dart';

class NationatlField extends StatefulWidget {
  const NationatlField({super.key});

  @override
  State<NationatlField> createState() => _NationatlFieldState();
}

class _NationatlFieldState extends State<NationatlField> {
  String? national;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return SizedBox(
      width: width * 0.20386,
      child: DropdownButtonFormField<String>(
        hint: Text(
          "Nathional",
          style: TextStyle(
            color: SharedColors.greenColor,
            fontSize: getResponsiveFont(context, fontSize: 15),
            fontFamily: "poppin",
          ),
        ),
        onSaved: (val) => national = val,
        value: national,
        items: ['Egyption', 'Bri'].map<DropdownMenuItem<String>>(
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
          national = val;
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
