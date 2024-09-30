import 'package:flutter/material.dart';
import 'package:fut/core/theme/colors.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class SmakerRange extends StatefulWidget {
  final dynamic onChange;
  final dynamic value;
  const SmakerRange({super.key, required this.onChange, required this.value});

  @override
  State<SmakerRange> createState() => _SmakerRangeState();
}

class _SmakerRangeState extends State<SmakerRange> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Smoking Range",
            style: TextStyle(
              fontSize: width < 1000
                  ? width * 0.021459
                  : (width * 0.021459) * (2 / 3),
              fontWeight: FontWeight.bold,
              fontFamily: "poppin",
              color: SharedColors.greenColor,
            ),
          ),
          SfSlider(
            min: 0.0,
            max: 100.0,
            value: widget.value,
            interval: 20,
            thumbIcon: Center(
              child: Text(
                "${widget.value.toInt()}",
                style: const TextStyle(
                    color: SharedColors.whiteColor, fontSize: 10),
              ),
            ),
            minorTicksPerInterval: 1,
            onChanged: widget.onChange,
            activeColor: SharedColors.greenColor,
          ),
          /* Slider(
            min: 0.0,
            max: 100.0,
            activeColor: SharedColors.greenColor,
            value: widget.value,
            onChanged: widget.onChange,
          ), */
        ],
      ),
    );
  }
}
