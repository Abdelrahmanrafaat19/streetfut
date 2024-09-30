import 'package:flutter/material.dart';
import 'package:fut/core/theme/colors.dart';

class SmakingSwitch extends StatefulWidget {
  final bool toggle;
  final Function(bool)? onChanged;
  const SmakingSwitch({super.key, required this.toggle, this.onChanged});

  @override
  State<SmakingSwitch> createState() => _SmakingSwitchState();
}

class _SmakingSwitchState extends State<SmakingSwitch> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: width * 0.20386,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Smaker",
            style: TextStyle(
              fontSize: width < 1000
                  ? width * 0.021459
                  : (width * 0.021459) * (2 / 3),
              fontWeight: FontWeight.bold,
              fontFamily: "poppin",
              color: SharedColors.greenColor,
            ),
          ),
          Switch(
            value: widget.toggle,
            activeColor: SharedColors.greenColor,
            activeTrackColor: SharedColors.whiteColor,
            onChanged: widget.onChanged,
          )
        ],
      ),
    );
  }
}
