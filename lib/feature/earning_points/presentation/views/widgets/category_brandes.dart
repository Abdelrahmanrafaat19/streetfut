import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/theme/colors.dart';
import 'package:fut/generated/l10n.dart';

class CategoryBrandes extends StatefulWidget {
  const CategoryBrandes({super.key});

  @override
  State<CategoryBrandes> createState() => _CategoryBrandesState();
}

class _CategoryBrandesState extends State<CategoryBrandes> {
  List image = [
    "assetes/images/foodandbeverage.png",
    "assetes/images/telecom.png",
    "assetes/images/sportswear.png",
    "assetes/images/pitchearn.png",
    "assetes/images/otherservices.png"
  ];
  List text = [
    "Food & Beverage",
    "Telecom",
    "SportsWear",
    "Pitches",
    "Other Services"
  ];
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: double.infinity,
      height: width < 1000 ? height * 0.244186 : height * 0.244186,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            alignment: Alignment.center,
            height: width < 1000 ? height * 0.17674 : height * 0.17674,
            child: Text(
              S.of(context).area,
              style: TextStyle(
                  color: SharedColors.whiteColor,
                  fontFamily: "poppin",
                  fontWeight: FontWeight.w600,
                  fontSize: width * 0.021459),
            ),
          ),
          SizedBox(
            width: width * 0.02145,
          ),
          for (int index = 0; index < image.length; index++)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: width < 1000
                        ? height * 0.17674
                        : (height * 0.17674) * (3 / 4),
                    width: width * 0.15987,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        image: DecorationImage(
                          image: AssetImage(
                            image[index],
                          ),
                          fit: BoxFit.fill,
                        )),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    text[index],
                    style: TextStyle(
                        color: SharedColors.whiteColor,
                        fontFamily: "poppin",
                        fontWeight: FontWeight.w600,
                        fontSize: width * 0.01824),
                  ),
                ],
              ),
            )
        ],
      ),
    );
  }
}
