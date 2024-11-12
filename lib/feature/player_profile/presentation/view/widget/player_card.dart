// import 'package:flutter/material.dart';

// class PlayerCard extends StatelessWidget {
//   const PlayerCard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var width = MediaQuery.of(context).size.width;
//     var height = MediaQuery.of(context).size.height;
//     return SizedBox(
//       width: width < 1000 ? width * 0.1781115 : (width * 0.1781115) * (2 / 3),
//       height:
//           width < 1000 ? height * 0.6558139 : (height * 0.6558139) * (2 / 3),
//       child: Stack(
//         children: [
//           Positioned.fill(
//             child: SizedBox.expand(
//               child: FittedBox(
//                 fit: BoxFit.cover,
//                 child: Image.asset("assetes/images/backgroundteamprofile.png"),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
