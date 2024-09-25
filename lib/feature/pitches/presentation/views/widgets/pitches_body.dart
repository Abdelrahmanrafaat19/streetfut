import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/responsive_font.dart';
import 'package:fut/core/theme/colors.dart';
import 'package:fut/feature/pitches/presentation/views/widgets/search_field.dart';

class PitchesBody extends StatefulWidget {
  const PitchesBody({super.key});

  @override
  State<PitchesBody> createState() => _PitchesBodyState();
}

class _PitchesBodyState extends State<PitchesBody>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  int index = 0;
  @override
  void initState() {
    controller = TabController(length: 6, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: height * 0.03398,
            ),
            const SearchField(),
            SizedBox(
              width: double.infinity,
              child: TabBar(
                controller: controller,
                isScrollable: true,
                splashBorderRadius: BorderRadius.circular(100),
                enableFeedback: false,
                indicator: const BoxDecoration(color: SharedColors.greenColor),
                automaticIndicatorColorAdjustment: false,
                unselectedLabelColor: SharedColors.greenColor,
                onTap: (value) => setState(() {
                  index = value;
                }),
                tabAlignment: TabAlignment.start,
                dividerHeight: 0.0,
                labelColor: Colors.white,
                indicatorColor: const Color(0xffF8F8F8),
                overlayColor: const WidgetStatePropertyAll(Colors.transparent),
                labelStyle: TextStyle(
                    fontSize: getResponsiveFont(context, fontSize: 20),
                    fontWeight: FontWeight.bold),
                tabs: [
                  Container(
                      height: 35.h,
                      margin: EdgeInsets.only(bottom: 10.h),
                      decoration: BoxDecoration(
                          color: index == 0
                              ? SharedColors.greenColor
                              : const Color(0xffECECEC),
                          borderRadius: BorderRadius.circular(15.r)),
                      child: const Tab(
                        text: "All",
                      )),
                  for (int i = 0; i < 5; i++)
                    Container(
                      height: 35.h,
                      margin: EdgeInsets.only(bottom: 10.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: width * 0.01639,
                      ),
                      decoration: BoxDecoration(
                          color: index == i + 1
                              ? SharedColors.greenColor
                              : const Color(0xffECECEC),
                          borderRadius: BorderRadius.circular(15.r)),
                      child: const Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Tab(
                          text: 'Naser_city',
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
