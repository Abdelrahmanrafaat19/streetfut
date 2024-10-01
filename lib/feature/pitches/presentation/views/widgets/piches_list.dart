import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/responsive_font.dart';
import 'package:fut/core/theme/colors.dart';
import 'package:fut/feature/pitches/presentation/views/pitches_details.dart';

class PichesList extends StatelessWidget {
  const PichesList({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: double.infinity,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const PitchesDetailsScreen(),
              ));
            },
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: height * 0.0242),
              child: Row(
                children: [
                  Container(
                    height: height * 0.369,
                    width: width * 0.4415,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          "assetes/images/pitches.jpg",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.02622,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Future Britch School ${index + 1}",
                        style: TextStyle(
                          color: SharedColors.whiteColor,
                          fontSize: getResponsiveFont(context, fontSize: 24),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02427,
                      ),
                      Row(
                        children: [
                          Image(
                            image: const AssetImage(
                              "assetes/svg/1loc.png",
                            ),
                            width: width * 0.0371,
                            height: height * 0.0825,
                          ),
                          Text(
                            "Location: Nasr city 8.0 km Away",
                            style: TextStyle(
                              color: SharedColors.whiteColor,
                              fontSize:
                                  getResponsiveFont(context, fontSize: 20),
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.01427,
                      ),
                      Row(
                        children: [
                          Image(
                            image: const AssetImage(
                              "assetes/svg/cion.png",
                            ),
                            width: width * 0.0371,
                            height: height * 0.0825,
                          ),
                          Text(
                            "price: 250 EGP per hour",
                            style: TextStyle(
                              color: SharedColors.whiteColor,
                              fontSize:
                                  getResponsiveFont(context, fontSize: 20),
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
