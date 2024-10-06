import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/theme/colors.dart';

class SearchField extends StatefulWidget {
  final String hint;
  const SearchField({super.key, required this.hint});

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: width * 0.4863,
      height: width < 1000 ? height * 0.08139 : (height * 0.116279) * (2 / 3),
      child: TextFormField(
        keyboardType: TextInputType.streetAddress,
        cursorColor: SharedColors.greyFieldsColor,
        cursorHeight: height * 0.0477,
        decoration: InputDecoration(
          suffixIcon: const Icon(
            Icons.search_sharp,
            color: SharedColors.whiteColor,
          ),
          contentPadding: EdgeInsets.symmetric(
              vertical: height * 0.0194, horizontal: width * 0.02),
          filled: true,
          fillColor: const Color(0xffD8D8D8).withOpacity(0.4),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            // borderSide: const BorderSide(color: SharedColors.greyFieldsColor),
            borderRadius: BorderRadius.circular(20.r),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            // borderSide: const BorderSide(color: SharedColors.greyFieldsColor),
            borderRadius: BorderRadius.circular(20.r),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            // borderSide: const BorderSide(color: SharedColors.greyFieldsColor),
            borderRadius: BorderRadius.circular(20.r),
          ),
          hintStyle: TextStyle(
            color: SharedColors.whiteColor,
            fontSize: 20.h,
            fontFamily: "poppin",
          ),
          hintText: widget.hint,
        ),
      ),
    );
  }
}
