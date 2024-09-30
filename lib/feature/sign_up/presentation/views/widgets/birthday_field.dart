import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/responsive_font.dart';
import 'package:fut/core/theme/colors.dart';
import 'package:intl/intl.dart';

class BirthdayField extends StatefulWidget {
  const BirthdayField({super.key});

  @override
  State<BirthdayField> createState() => _BirthdayFieldState();
}

class _BirthdayFieldState extends State<BirthdayField> {
  TextEditingController dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width * 0.20386,
      child: TextField(
        controller: dateController, //editing controller of this TextField
        decoration: InputDecoration(
          hintText: "Birthday",
          hintStyle: TextStyle(
            color: SharedColors.greenColor,
            fontSize: getResponsiveFont(context, fontSize: 15),
            fontFamily: "poppin",
          ),
          suffixIcon: Padding(
            padding: EdgeInsets.only(top: 10.h),
            child: const Icon(
              Icons.arrow_drop_down_sharp,
              size: 30,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18.r),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18.r),
            borderSide: BorderSide.none,
          ),
          fillColor: SharedColors.whiteColor,
          filled: true,
          //label text of field
        ),
        readOnly: true, //set it true, so that user will not able to edit text
        onTap: () async {
          DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(
                  1950), //DateTime.now() - not to allow to choose before today.
              lastDate: DateTime.now());
          if (pickedDate != null) {
            debugPrint(pickedDate.toString());
            String formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate);

            dateController.text =
                formattedDate; //set output date to TextField value.
          } else {}
        },
      ),
    );
  }
}
