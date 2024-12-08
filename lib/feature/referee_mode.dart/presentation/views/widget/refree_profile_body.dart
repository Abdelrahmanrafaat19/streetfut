import 'package:flutter/material.dart';
import 'package:fut/feature/referee_mode.dart/presentation/views/widget/personal_info_in_refree_profile.dart';
import 'package:fut/feature/referee_mode.dart/presentation/views/widget/readiness_container.dart';
import 'package:fut/feature/referee_mode.dart/presentation/views/widget/refree_name_image_profile.dart';
import 'package:fut/feature/referee_mode.dart/presentation/views/widget/refree_review_container.dart';
import 'package:fut/feature/referee_mode.dart/presentation/views/widget/statistics_container_in_refree_profile.dart';

// ignore: must_be_immutable
class RefreeProfileBody extends StatefulWidget {
  const RefreeProfileBody({super.key});

  @override
  State<RefreeProfileBody> createState() => _RefreeProfileBodyState();
}

class _RefreeProfileBodyState extends State<RefreeProfileBody> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      width: double.infinity,
      height: width < 1000 ? height * 0.86 : height * 0.87,
      margin: EdgeInsets.symmetric(horizontal: width * 0.042918),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const RefreeNameImageProfile(),
            SizedBox(
              height: height * 0.02790,
            ),
            Row(
              children: [
                const ReadinessContainer(),
                SizedBox(
                  width: width * 0.023605,
                ),
                const RefreeReviewContainer()
              ],
            ),
            SizedBox(
              height: height * 0.02790,
            ),
            Row(
              children: [
                const PersonalInfoInRefreeProfile(),
                SizedBox(
                  width: width * 0.023605,
                ),
                const StatisticsContainerInRefreeProfile()
              ],
            )
          ],
        ),
      ),
    );
  }
}
