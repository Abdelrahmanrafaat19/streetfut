// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/theme/colors.dart';

class CustamDropDwonField extends StatefulWidget {
  final String text;
  final List<String> data;
  double? width, height, fontSize, iconSize;
  Color? textColor, backGroundColor;
  CustamDropDwonField(
      {super.key,
      required this.text,
      required this.data,
      this.width,
      this.backGroundColor,
      this.textColor,
      this.height,
      this.fontSize,
      this.iconSize});

  @override
  State<CustamDropDwonField> createState() => _CustamDropDwonFieldState();
}

class _CustamDropDwonFieldState extends State<CustamDropDwonField> {
  String? area;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: widget.width ??
          (width > 1000 ? width * 0.20386 * 2 : (width * 0.20386) * 1.4),
      height: widget.height ?? (width < 1000 ? height * 0.10139 : null),
      child: DropdownButtonFormField<String>(
        hint: Text(
          widget.text,
          style: TextStyle(
              color: widget.textColor ?? SharedColors.greenColor,
              fontSize: widget.fontSize ?? (width * 0.0160944),
              fontFamily: "poppin",
              fontWeight: FontWeight.bold),
        ),
        onSaved: (val) => area = val,
        value: area,
        items: widget.data.map<DropdownMenuItem<String>>(
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
          area = val;
        },
        icon: Icon(
          Icons.arrow_drop_down_sharp,
          size: widget.iconSize ?? 30,
          color: widget.textColor ?? SharedColors.greenColor,
        ),
        decoration: InputDecoration(
          contentPadding:
              width < 1000 ? const EdgeInsets.symmetric(horizontal: 10) : null,
          fillColor: widget.backGroundColor ?? SharedColors.whiteColor,
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
