import 'package:flutter/material.dart';
import 'package:fut/core/component/custam_drop_down_field.dart';
import 'package:fut/core/component/custam_app_bar.dart';
import 'package:fut/core/theme/colors.dart';
import 'package:fut/feature/pitches/presentation/views/widgets/piches_list.dart';
import 'package:fut/feature/pitches/presentation/views/widgets/search_field.dart';

class PitchesScreens extends StatefulWidget {
  const PitchesScreens({super.key});

  @override
  State<PitchesScreens> createState() => _PitchesScreensState();
}

class _PitchesScreensState extends State<PitchesScreens>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  int index = 0;
  String? area;
  @override
  void initState() {
    controller = TabController(length: 6, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leadingWidth:
            width < 1000 ? (width * 0.637982) : (width * 0.587982) * 0.9,
        leading: const CustamAppBar(),
        toolbarHeight: width < 1000 ? height * 0.11395 : height * 0.0813,
        bottom: AppBar(
          toolbarHeight:
              width < 1000 ? height * 0.10504 : (height * 0.15604) * (2 / 3),
          leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.arrow_back,
              color: SharedColors.whiteColor,
              size: width * 0.0299,
            ),
          ),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /*    SizedBox(
                height: height * 0.03398,
              ), */
              const SearchField(
                hint: "Search For a Pitch or Location",
              ),
              SizedBox(
                height: height * 0.03398,
              ),
              SizedBox(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustamDropDwonField(
                    text: "Choose Area",
                    data: const ["Naser_City", "New_Cairo"],
                  ),
                  SizedBox(
                    width: width * 0.04399,
                  ),
                  CustamDropDwonField(
                    text: "Choose Time",
                    data: const ["100.0", "250.5"],
                  ),
                  SizedBox(
                    width: width * 0.04399,
                  ),
                  CustamDropDwonField(
                    text: "Choose Price",
                    data: const ["100.0", "250.5"],
                  ),
                ],
              )),
              Builder(
                  builder: (context) => Container(
                      margin: EdgeInsets.symmetric(horizontal: width * 0.03606),
                      child: const PichesList())),
            ],
          ),
        ),
      ),
    );
  }
}
/*  TabBar(
                  controller: controller,
                  isScrollable: true,
                  splashBorderRadius: BorderRadius.circular(100.r),
                  enableFeedback: false,
                  indicator: BoxDecoration(
                    color: SharedColors.greenColor,
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  automaticIndicatorColorAdjustment: false,
                  unselectedLabelColor: SharedColors.greenColor,
                  onTap: (value) => setState(() {
                    index = value;
                  }),
                  tabAlignment: TabAlignment.start,
                  dividerHeight: 0.0,
                  labelColor: Colors.white,
                  indicatorColor: const Color(0xffF8F8F8),
                  overlayColor:
                      const WidgetStatePropertyAll(Colors.transparent),
                  labelStyle: TextStyle(
                      fontSize: getResponsiveFont(context, fontSize: 20),
                      fontWeight: FontWeight.bold),
                  tabs: [
                    Container(
                        height: width < 950
                            ? height * 0.09495
                            : (height * 0.09495) / 2,
                        padding: EdgeInsets.symmetric(
                          horizontal: width * 0.01639,
                        ),
                        decoration: BoxDecoration(
                          color: index == 0
                              ? SharedColors.greenColor
                              : const Color(0xffECECEC),
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                        child: const Tab(
                          text: "All",
                        )),
                    for (int i = 0; i < 5; i++)
                      Container(
                        height: width < 950
                            ? height * 0.09495
                            : (height * 0.09495) / 2,
                        padding: EdgeInsets.symmetric(
                          horizontal: width * 0.01639,
                        ),
                        decoration: BoxDecoration(
                          color: index == i + 1
                              ? SharedColors.greenColor
                              : const Color(0xffECECEC),
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Tab(
                            text: 'Naser_city',
                          ),
                        ),
                      ),
                  ],
                ), */
