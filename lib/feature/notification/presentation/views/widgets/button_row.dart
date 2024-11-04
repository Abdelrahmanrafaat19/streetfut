import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/theme/colors.dart';

class ButtonRow extends StatefulWidget {
  final void Function()? acceptedMethod, unAcceptedMethod;
  final String acceptedText, unAcceptedText;

  const ButtonRow(
      {super.key,
      this.acceptedMethod,
      this.unAcceptedMethod,
      required this.acceptedText,
      required this.unAcceptedText});

  @override
  State<ButtonRow> createState() => _ButtonRowState();
}

class _ButtonRowState extends State<ButtonRow> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Row(
      children: [
        GestureDetector(
          onTap: widget.acceptedMethod,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            alignment: Alignment.center,
            // width: width * 0.14592,
            height:
                width < 1000 ? height * 0.07348 : (height * 0.07348) * (2 / 3),
            decoration: BoxDecoration(
              color: const Color(0xff90B834),
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Text(
              widget.acceptedText,
              style: TextStyle(
                color: SharedColors.whiteColor,
                fontFamily: "poppin",
                fontWeight: FontWeight.bold,
                fontSize: width < 1000
                    ? width * 0.01609
                    : (width * 0.01609) * (2 / 3),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        GestureDetector(
          onTap: widget.unAcceptedMethod,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            alignment: Alignment.center,
            // width: width * 0.14592,
            height:
                width < 1000 ? height * 0.07348 : (height * 0.07348) * (2 / 3),
            decoration: BoxDecoration(
              color: const Color(0xffE60000),
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Text(
              widget.unAcceptedText,
              style: TextStyle(
                color: SharedColors.whiteColor,
                fontFamily: "poppin",
                fontWeight: FontWeight.bold,
                fontSize: width < 1000
                    ? width * 0.01609
                    : (width * 0.01609) * (2 / 3),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
