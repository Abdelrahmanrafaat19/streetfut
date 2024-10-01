import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/responsive_font.dart';
import 'package:fut/core/theme/colors.dart';

class CustamDropDwonField extends StatefulWidget {
  final String text;
  final List<String> data;
  const CustamDropDwonField({
    super.key,
    required this.text,
    required this.data,
  });

  @override
  State<CustamDropDwonField> createState() => _CustamDropDwonFieldState();
}

class _CustamDropDwonFieldState extends State<CustamDropDwonField> {
  String? area;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width > 1000 ? width * 0.20386 : (width * 0.20386) * 1.4,
      child: DropdownButtonFormField<String>(
        hint: Text(
          widget.text,
          style: TextStyle(
            color: SharedColors.greenColor,
            fontSize: getResponsiveFont(context, fontSize: 15),
            fontFamily: "poppin",
          ),
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
        icon: const Icon(
          Icons.arrow_drop_down_sharp,
          size: 30,
          color: SharedColors.greenColor,
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
