import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/component/default_button.dart';
import 'package:fut/core/responsive_font.dart';
import 'package:fut/core/theme/colors.dart';

class PlayerDialog extends StatelessWidget {
  final List<Map<String, String>> players = [
    {
      'name': 'Ahmed Kharba',
      'id': '568946264205',
      'imageUrl': 'https://example.com/image1.jpg'
    },
    {
      'name': 'Mohamed Salah',
      'id': '8659531246232',
      'imageUrl': 'https://example.com/image2.jpg'
    },
    {
      'name': 'Mostafa Ashrf',
      'id': '7816461456181',
      'imageUrl': 'https://example.com/image3.jpg'
    },
  ];

  PlayerDialog({super.key});

  @override
  Widget build(BuildContext context) {
    // Use MediaQuery to get the screen width and height
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // Calculate dialog width based on screen size
    double dialogWidth = screenWidth < 1000 ? screenWidth * 0.4 : 400;
    double dialogPadding = screenWidth < 1000 ? 16 : 24;
    double avatarRadius = screenWidth < 1000 ? 20 : 25;
    double fontSize = screenWidth < 1000 ? 14 : 16;

    return Dialog(
      backgroundColor: SharedColors.whiteColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Container(
        padding: EdgeInsets.all(dialogPadding),
        width: dialogWidth,
        height: screenHeight * 0.6, // 60% of screen height
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Close Button
            Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: Icon(Icons.close, size: screenWidth < 1000 ? 20 : 24),
              ),
            ),

            // Search TextField
            TextField(
              decoration: InputDecoration(
                prefixIcon:
                    Icon(Icons.search, size: screenWidth < 1000 ? 18 : 24),
                hintText: 'Player Name / ID',
                hintStyle: TextStyle(fontSize: fontSize),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
            const SizedBox(height: 16),

            // Player List
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: players.length,
                itemBuilder: (context, index) {
                  final player = players[index];
                  return ListTile(
                    leading: CircleAvatar(
                      radius: avatarRadius,
                      backgroundImage: NetworkImage(player['imageUrl']!),
                    ),
                    title: Text(
                      player['name']!,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: fontSize),
                    ),
                    subtitle: Text(
                      player['id']!,
                      style: TextStyle(fontSize: fontSize * 0.9),
                    ),
                  );
                },
              ),
            ),

            // Add Player Button
            const SizedBox(height: 16),
            SizedBox(
              width: screenWidth * 0.195,
              height: screenHeight * 0.0953,
              child: defaultButton(
                  onTap: () {},
                  text: "Add Plyer",
                  gradient: const LinearGradient(colors: [
                    Color(0xff9A8E14),
                    Color(0xff95A324),
                    Color(0xff90B834)
                  ]),
                  color: SharedColors.greenColor,
                  fontFamily: "poppin",
                  textcolor: SharedColors.whiteColor,
                  fontSize: getResponsiveFont(context, fontSize: 25),
                  raduis: 10.r),
            )
          ],
        ),
      ),
    );
  }
}
