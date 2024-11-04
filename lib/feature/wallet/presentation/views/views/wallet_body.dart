import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/theme/colors.dart';

class WalletBody extends StatefulWidget {
  const WalletBody({super.key});

  @override
  State<WalletBody> createState() => _WalletBodyState();
}

class _WalletBodyState extends State<WalletBody> {
  List<Map> data = [
    {
      "text": "Card (Debit / Credit)",
      "image": ["assetes/images/MasterCard.png", "assetes/images/mezaa.png"]
    },
    {
      "text": "Telecom Wallets",
      "image": [
        "assetes/images/vodafon_logo.png",
        "assetes/images/orange.png",
        "assetes/images/we.png"
      ]
    },
    {
      "text": "Reference code",
      "image": [
        "assetes/images/paymob.png",
        "assetes/images/fawry.png",
      ]
    },
    {
      "text": "Instalments",
      "image": [
        "assetes/images/value.png",
        "assetes/images/sympl.png",
      ]
    },
  ];
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Container(
      width: double.infinity,
      height: width < 1000 ? height * 0.8 : height * 0.87,
      margin: EdgeInsets.symmetric(horizontal: width * 0.042918),
      child: Row(
        children: [
          Expanded(
            child: ListView(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height * 0.0348837,
                ),
                Text(
                  "Charge Your Wallet Through",
                  style: TextStyle(
                    color: SharedColors.whiteColor,
                    fontFamily: "poppin",
                    fontWeight: FontWeight.bold,
                    fontSize: width * 0.023605,
                  ),
                ),
                SizedBox(
                  height: height * 0.044186,
                ),
                for (int i = 0; i < data.length; i++)
                  Container(
                    margin: EdgeInsets.symmetric(
                        vertical: width < 1000
                            ? height * 0.03488
                            : (height * 0.03488) * (2 / 3)),
                    child: Row(
                      children: [
                        Icon(
                          Icons.add_circle,
                          color: SharedColors.greenColor,
                          size: width * 0.031459,
                        ),
                        SizedBox(
                          width: width * 0.011802,
                        ),
                        Text(
                          data[i]["text"],
                          style: TextStyle(
                            color: SharedColors.whiteColor,
                            fontFamily: "poppin",
                            fontWeight: FontWeight.w600,
                            fontSize: width * 0.019313,
                          ),
                        ),
                        SizedBox(
                          width: width * 0.011802,
                        ),
                        for (int x = 0; x < data[i]["image"].length; x++)
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: (width * 0.011802) / 2),
                            child: Image.asset(
                              data[i]["image"][x],
                              width: width * 0.056137,
                              height: height * 0.070465,
                            ),
                          ),
                      ],
                    ),
                  )
              ],
            ),
          ),
          Container(
            width: width * 0.30579,
            height: width < 1000
                ? height * 0.362791
                : (height * 0.362791) * (2 / 3),
            decoration: BoxDecoration(
                color: SharedColors.greyBoldColor,
                borderRadius: BorderRadius.circular(20.r)),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
                  height: 51.h,
                  width: width * 0.30579,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.r),
                        topRight: Radius.circular(20.r)),
                    gradient: const LinearGradient(colors: [
                      Color(0xff9A8E14),
                      Color(0xff95A324),
                      Color(0xff90B834)
                    ]),
                  ),
                  child: Text(
                    "My Balance ",
                    style: TextStyle(
                        fontFamily: "poppin",
                        fontSize: 30.h,
                        color: SharedColors.whiteColor,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  height: width < 1000
                      ? (height * 0.362791) - 51.h
                      : ((height * 0.362791) * (2 / 3)) - 51.h,
                  alignment: Alignment.center,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: width * 0.02072,
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Text(
                              "EGP",
                              style: TextStyle(
                                color: SharedColors.greenColor,
                                fontFamily: "poppin",
                                fontSize: width * 0.027896,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: width * 0.010729,
                            ),
                            Text(
                              "1500",
                              style: TextStyle(
                                color: SharedColors.whiteColor,
                                fontFamily: "poppin",
                                fontSize: width * 0.027896,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        width: width * 0.1180257,
                        height: width < 1000
                            ? height * 0.127906
                            : (height * 0.127906) * (2 / 3),
                        decoration: BoxDecoration(
                          color: const Color(0xff969F21),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50.r),
                              bottomLeft: Radius.circular(50.r)),
                        ),
                        child: Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: width * 0.01609),
                          width: width * 0.03433,
                          height: height * 0.074418,
                          alignment: Alignment.centerLeft,
                          decoration: const BoxDecoration(
                              color: SharedColors.whiteColor,
                              shape: BoxShape.circle),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
