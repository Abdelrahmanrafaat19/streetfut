import 'package:flutter/material.dart';

class CustamPreferrsdSizeWidget extends StatelessWidget
    implements PreferredSizeWidget {
  final Widget child;
  final double height;

  const CustamPreferrsdSizeWidget(
      {super.key, required this.child, required this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height, // Apply the preferred height
      child: child, // Your wrapped widget
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
