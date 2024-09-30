import 'package:flutter/material.dart';
import 'package:fut/core/theme/colors.dart';

class DrawerContain extends StatefulWidget {
  final String imagePath, text;
  final void Function()? onTap;
  const DrawerContain(
      {super.key, required this.imagePath, required this.text, this.onTap});

  @override
  State<DrawerContain> createState() => _DrawerContainState();
}

class _DrawerContainState extends State<DrawerContain> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: width < 1000 ? 10 : 5),
        child: Row(
          children: [
            Image.asset(
              widget.imagePath,
              width:
                  width < 1000 ? width * 0.05364 : (width * 0.05364) * (2 / 3),
              height: height * 0.074418,
            ),
            SizedBox(
              width: width * 0.010729,
            ),
            Text(
              widget.text,
              style: TextStyle(
                color: SharedColors.whiteColor,
                fontFamily: "poppin",
                fontWeight: FontWeight.w700,
                fontSize: width < 1000
                    ? width * 0.02145
                    : (width * 0.02145) * (2 / 3),
              ),
            )
          ],
        ),
      ),
    );
  }
}
