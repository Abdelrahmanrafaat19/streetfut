import 'package:flutter/material.dart';
import 'package:fut/feature/tournament/presentation/views/widgets/league_tournment/table_matches.dart';
import 'package:fut/feature/tournament/presentation/views/widgets/league_tournment/table_mvp.dart';
import 'package:fut/feature/tournament/presentation/views/widgets/league_tournment/table_top_scorer.dart';

class FixtureDetailsScreen extends StatefulWidget {
  const FixtureDetailsScreen({super.key});

  @override
  State<FixtureDetailsScreen> createState() => _FixtureDetailsScreenState();
}

class _FixtureDetailsScreenState extends State<FixtureDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      margin: const EdgeInsets.only(top: 10),
      width: double.infinity,
      height: width < 1000 ? height * 0.7 : height * 0.73,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TableMatches(),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TableTopScorer(),
                SizedBox(
                  height: 10,
                ),
                TableMvp(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
