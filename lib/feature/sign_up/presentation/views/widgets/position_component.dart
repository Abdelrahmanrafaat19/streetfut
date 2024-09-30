import 'package:flutter/material.dart';
import 'package:fut/core/theme/colors.dart';

// ignore: must_be_immutable
class PositionComponent extends StatefulWidget {
  final String positionText;
  final bool checkValue;
  final Color colorContainer;
  void Function(bool?)? onChanged;
  PositionComponent({
    super.key,
    required this.checkValue,
    required this.colorContainer,
    required this.onChanged,
    required this.positionText,
  });

  @override
  State<PositionComponent> createState() => _PositionComponentState();
}

class _PositionComponentState extends State<PositionComponent> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: width * 0.20386,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: width < 1000 ? width * 0.04721 : (width * 0.04721) * (2 / 3),
            height:
                width < 1000 ? height * 0.07674 : (height * 0.07674) * (2 / 3),
            decoration: BoxDecoration(
              color: widget.colorContainer,
              borderRadius: BorderRadius.circular(5),
            ),
            alignment: Alignment.center,
            child: Text(
              widget.positionText,
              style: TextStyle(
                color: SharedColors.whiteColor,
                fontFamily: "poppin",
                fontWeight: FontWeight.w700,
                fontSize: width < 1000
                    ? width * 0.01824
                    : (width * 0.01824) * (2 / 3),
              ),
            ),
          ),
          Checkbox(
            value: widget.checkValue,
            activeColor: SharedColors.whiteColor,
            side: BorderSide.none,
            fillColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
              // Color when the checkbox is not selected (unchecked)
              return SharedColors.whiteColor;
            }),
            checkColor: SharedColors.greenColor,
            onChanged: widget.onChanged,
          )
        ],
      ),
    );
  }
}
