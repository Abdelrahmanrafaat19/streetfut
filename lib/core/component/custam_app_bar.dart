import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fut/core/responsive_font.dart';
import 'package:fut/core/theme/colors.dart';
import 'package:fut/feature/notification/presentation/views/notification_screen.dart';
import 'package:fut/feature/player_profile/presentation/view/profile_player_screen.dart';

class CustamAppBar extends StatelessWidget {
  const CustamAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    debugPrint(width.toString());
    return LayoutBuilder(
      builder: (context, constraints) {
        if (width < 1000) {
          return Container(
            width: width * 0.5858,
            height: height * 0.081395,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color(0xff9A8E14),
                  Color(0xff95A324),
                  Color(0xff90B834),
                ],
              ),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(25.r),
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Image.asset(
                    'assetes/logo/logofut.png',
                    width: width * 0.0354,
                    height: height * 0.10697,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: width * 0.0021,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ProfilePlayerScreen(),
                    ));
                  },
                  child: Container(
                    width: width * 0.040,
                    height: height * 0.0898,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfXaFI4hRuZSgD2_HsaWiXV_CftY6S8Kas5Q&s',
                        ).image,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                SizedBox(
                  width: width * 0.0021,
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mohamed Salah',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontSize: getResponsiveFont(context, fontSize: 12),
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'ID:+201063103655',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontSize: getResponsiveFont(context, fontSize: 12),
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: width * 0.0273,
                ),
                Row(
                  children: [
                    Container(
                      width: width * 0.02789,
                      height: height * 0.06046,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                "assetes/images/wallet.png",
                              ))),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Container(
                      width: width * 0.064377,
                      height: height * 0.048837,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: SharedColors.whiteColor,
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                      child: Text(
                        "500EGP",
                        style: TextStyle(
                          fontFamily: "poppin",
                          fontSize: width * 0.013948,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: width * 0.0874,
                  child: Stack(
                    children: [
                      Positioned(
                        top: height * 0.0097,
                        left: width * 0.0218,
                        child: Container(
                          width: width * 0.0579,
                          height: height * 0.0534,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5.r),
                          ),
                          child: Text(
                            '20K',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontSize:
                                  getResponsiveFont(context, fontSize: 15),
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SvgPicture.asset(
                        'assetes/svg/cofut.svg',
                        width: width * 0.04371,
                        height: height * 0.0728,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: width * 0.02732,
                ),
                SvgPicture.asset(
                  'assetes/svg/setting-01.svg',
                  width: width * 0.03326,
                  height: height * 0.0728,
                  fit: BoxFit.cover,
                  color: SharedColors.whiteColor,
                ),
                SizedBox(
                  width: width * 0.02732,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const NotificationScreen(),
                    ));
                  },
                  child: SvgPicture.asset(
                    'assetes/svg/Notification.svg',
                    width: width * 0.04371,
                    height: height * 0.0728,
                    fit: BoxFit.cover,
                    color: const Color(0xffF07B0F),
                  ),
                ),
              ],
            ),
          );
        } else {
          return Container(
            width: width * 0.5858,
            height: height * 0.081395,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color(0xff9A8E14),
                  Color(0xff95A324),
                  Color(0xff90B834),
                ],
              ),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(25.r),
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Image.asset(
                    'assetes/logo/logofut.png',
                    width: (width * 0.0354) * (1 / 2),
                    height: (height * 0.10697) * (1 / 2),
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: width * 0.0051,
                ),
                Container(
                  width: (width * 0.040),
                  height: height * 0.0898,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfXaFI4hRuZSgD2_HsaWiXV_CftY6S8Kas5Q&s',
                      ).image,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: width * 0.0021,
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mohamed Salah',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontSize: getResponsiveFont(context, fontSize: 12),
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'ID:+201063103655',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontSize: getResponsiveFont(context, fontSize: 12),
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: width * 0.0273,
                ),
                Row(
                  children: [
                    Container(
                      width: (width * 0.02789) * (2 / 3),
                      height: (height * 0.06046) * (2 / 3),
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                "assetes/images/wallet.png",
                              ))),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Container(
                      width: (width * 0.064377),
                      height: (height * 0.048837) * (2 / 3),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: SharedColors.whiteColor,
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                      child: Text(
                        "500EGP",
                        style: TextStyle(
                          fontFamily: "poppin",
                          fontSize: width * 0.013948,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: (width * 0.0273) * (2 / 3),
                ),
                SizedBox(
                  width: width * 0.0874,
                  child: Stack(
                    children: [
                      Positioned(
                        top: (height * 0.0097) / 2,
                        left: (width * 0.0218) / 2,
                        child: Container(
                          width: (width * 0.0579) * (3 / 4),
                          height: (height * 0.0534) / 2,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5.r),
                          ),
                          child: Text(
                            '20K',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontSize:
                                  getResponsiveFont(context, fontSize: 15),
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SvgPicture.asset(
                        'assetes/svg/coinfut.svg',
                        width: (width * 0.04371) / 2,
                        height: (height * 0.0728) / 2,
                        fit: BoxFit.cover,
                        color: const Color(0xffF07B0F),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: (width * 0.02732) / 2,
                ),
                SvgPicture.asset(
                  'assetes/svg/setting-01.svg',
                  width: (width * 0.03326) / 2,
                  height: (height * 0.0728) / 2,
                  fit: BoxFit.cover,
                  color: SharedColors.whiteColor,
                ),
                SizedBox(
                  width: width * 0.02732,
                ),
                SvgPicture.asset(
                  'assetes/svg/Notification.svg',
                  width: (width * 0.04371) * (1 / 2),
                  height: (height * 0.0728) / 2,
                  fit: BoxFit.cover,
                  color: const Color(0xffF07B0F),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
