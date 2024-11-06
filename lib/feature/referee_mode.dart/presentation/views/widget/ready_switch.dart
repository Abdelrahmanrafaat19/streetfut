import 'package:flutter/material.dart';
import 'package:fut/core/theme/colors.dart';

class CustomSwitch extends StatefulWidget {
  const CustomSwitch({super.key});

  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  bool isReady = true;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () {
        setState(() {
          isReady = !isReady;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: width < 1000 ? width * 0.104463 : width * 0.104463,
        height: width < 1000 ? height * 0.094186 : height * 0.054186,
        padding: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: isReady ? SharedColors.midGreenColor : SharedColors.redColor,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Text inside the switch
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                isReady ? '  Ready' : "",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: width * 0.016094,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Circular knob that moves
            AnimatedAlign(
              duration: const Duration(milliseconds: 300),
              alignment: isReady ? Alignment.centerRight : Alignment.centerLeft,
              child: Container(
                width: 30,
                height: 30,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
