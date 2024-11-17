import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/component/custam_drop_down_field.dart';
import 'package:fut/core/component/default_button.dart';
import 'package:fut/core/responsive_font.dart';
import 'package:fut/core/theme/colors.dart';
import 'package:fut/feature/tournament/presentation/views/widgets/count_of_teams_in_tournment_field.dart';
import 'package:intl/intl.dart';

class RequestTournment extends StatefulWidget {
  const RequestTournment({super.key});

  @override
  State<RequestTournment> createState() => _RequestTournmentState();
}

class _RequestTournmentState extends State<RequestTournment> {
  TextEditingController dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: width * 0.06513,
        vertical: 10,
      ),
      width: double.infinity,
      height: width < 1000 ? height * 0.75 : height * 0.8,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Count of teams",
                    style: TextStyle(
                      color: SharedColors.whiteColor,
                      fontWeight: FontWeight.bold,
                      fontSize: width * 0.019313,
                      fontFamily: "poppin",
                    ),
                  ),
                ),
                const CountOfTeamsInTournmentField()
              ],
            ),
            SizedBox(
              height: height * 0.044186,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Types of tournament",
                    style: TextStyle(
                      color: SharedColors.whiteColor,
                      fontWeight: FontWeight.bold,
                      fontSize: width * 0.019313,
                      fontFamily: "poppin",
                    ),
                  ),
                ),
                CustamDropDwonField(
                  text: "Type",
                  data: const ["knockOut", "Mixed"],
                )
              ],
            ),
            SizedBox(
              height: height * 0.044186,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Area",
                    style: TextStyle(
                      color: SharedColors.whiteColor,
                      fontWeight: FontWeight.bold,
                      fontSize: width * 0.019313,
                      fontFamily: "poppin",
                    ),
                  ),
                ),
                CustamDropDwonField(
                  text: "Area",
                  data: const ["NasrCity", "NewCairo"],
                )
              ],
            ),
            SizedBox(
              height: height * 0.044186,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Date & Time “Start”",
                    style: TextStyle(
                      color: SharedColors.whiteColor,
                      fontWeight: FontWeight.bold,
                      fontSize: width * 0.019313,
                      fontFamily: "poppin",
                    ),
                  ),
                ),
                SizedBox(
                  width: width > 1000
                      ? width * 0.20386 * 2
                      : (width * 0.20386) * 1.4,
                  height: width < 1000 ? height * 0.10139 : null,
                  child: TextField(
                    controller:
                        dateController, //editing controller of this TextField
                    decoration: InputDecoration(
                      contentPadding: width < 1000
                          ? const EdgeInsets.symmetric(horizontal: 10)
                          : null,
                      fillColor: SharedColors.whiteColor,
                      filled: true,
                      hintText: "Calender",
                      hintStyle: TextStyle(
                        color: SharedColors.greenColor,
                        fontSize: (width * 0.0160944),
                        fontFamily: "poppin",
                      ),
                      suffixIcon: const Icon(
                        Icons.calendar_month_rounded,
                        color: SharedColors.greenColor,
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18.r),
                          borderSide: BorderSide.none),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18.r),
                          borderSide: BorderSide.none),
                    ),
                    readOnly:
                        true, //set it true, so that user will not able to edit text
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(
                              1950), //DateTime.now() - not to allow to choose before today.
                          lastDate: DateTime.now());
                      if (pickedDate != null) {
                        debugPrint(pickedDate.toString());
                        String formattedDate =
                            DateFormat('dd-MM-yyyy').format(pickedDate);

                        dateController.text =
                            formattedDate; //set output date to TextField value.
                      } else {}
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: width < 1000 ? height * 0.104651 : (height * 0.104651),
            ),
            SizedBox(
              width: width * 0.195,
              height: height * 0.0953,
              child: defaultButton(
                  text: "Submit",
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
            ),
            SizedBox(
              height: height * 0.044186 * 2,
            ),
          ],
        ),
      ),
    );
  }
}
