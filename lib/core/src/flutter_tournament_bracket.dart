import 'package:flutter/material.dart';
import 'package:fut/core/theme/colors.dart';
import 'package:fut/core/src/model/tournament_match.dart';
import 'package:fut/core/src/model/tournament_model.dart';
import 'package:fut/core/src/utils/calculate_separator_height.dart';
import 'widgets/bracket_match_card.dart';

class TournamentBracket extends StatelessWidget {
  const TournamentBracket({
    super.key,
    this.itemsMarginVertical = 20.0,
    this.cardHeight = 60.0,
    this.cardWidth = 150.0,
    this.card,
    required this.list,
    this.lineColor = SharedColors.whiteColor,
    this.dirction = "left",
  });

  final double itemsMarginVertical;
  final String dirction;
  final double cardHeight;
  final double cardWidth;

  final Widget Function(TournamentMatch match)? card;

  final Color lineColor;

  final List<Tournament> list;

  @override
  Widget build(BuildContext context) {
    double separatorH = itemsMarginVertical;
    return SizedBox(
      height: ((list.first.matches.length * cardHeight) +
          ((list.first.matches.length - 1) * separatorH)),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        reverse: dirction == "left" ? false : true,
        shrinkWrap: true,
        itemCount: list.length,
        itemBuilder: (_, index) {
          final Tournament item = list[index];
          separatorH = calculateSeparatorHeight(
              groupsSize: index,
              itemsMarginVertical: itemsMarginVertical,
              cardHeight: cardHeight);
          return _MatchesList(
            cardWidth: cardWidth,
            cardHeight: cardHeight,
            card: card,
            matchCount: item.matches.length,
            separatorHeight: separatorH,
            matches: item.matches,
          );
        },
        separatorBuilder: (_, index) {
          final Tournament item = list[index];
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: SizedBox(
                  width: 50,
                  child: ListView.separated(
                    itemCount: item.matches.length ~/ 2,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (_, index) {
                      return dirction == "left"
                          ? Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: (separatorH + cardHeight),
                                  width: 20.0,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      top: BorderSide(
                                          color: lineColor, width: 1),
                                      left: dirction == "left"
                                          ? BorderSide.none
                                          : BorderSide(
                                              color: lineColor, width: 1),
                                      right: dirction != "left"
                                          ? BorderSide.none
                                          : BorderSide(
                                              color: lineColor, width: 1),
                                      bottom: BorderSide(
                                          color: lineColor, width: 1),
                                    ),
                                  ),
                                ),
                                Expanded(
                                    child: Divider(
                                  thickness: 1,
                                  color: lineColor,
                                )),
                              ],
                            )
                          : Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 1,
                                    width: 20,
                                    color: lineColor,
                                  ),
                                ),
                                Container(
                                  height: (separatorH + cardHeight),
                                  width: 20.0,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      top: BorderSide(
                                          color: lineColor, width: 1),
                                      left: BorderSide(
                                          color: lineColor, width: 1),
                                      bottom: BorderSide(
                                          color: lineColor, width: 1),
                                    ),
                                  ),
                                ),
                              ],
                            );
                    },
                    separatorBuilder: (_, index) {
                      return SizedBox(
                        height: (cardHeight + separatorH),
                      );
                    },
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _MatchesList extends StatelessWidget {
  /// Creates a [_MatchesList] widget.
  const _MatchesList({
    required this.matchCount,
    required this.separatorHeight,
    this.cardHeight = 100.0,
    this.cardWidth = 220.0,
    this.card,
    required this.matches,
  });

  final int matchCount;
  final double separatorHeight;
  final double? cardHeight;
  final double? cardWidth;

  final Widget Function(TournamentMatch match)? card;

  final List<TournamentMatch> matches;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: cardWidth ?? 220.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: ListView.separated(
              itemCount: matches.length,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (_, index) {
                final TournamentMatch item = matches[index];

                return SizedBox(
                    height: cardHeight ?? 100.0,
                    child: card != null
                        ? card!(item)
                        : BracketMatchCard(
                            item: item,
                          ));
              },
              separatorBuilder: (_, int index) {
                return Container(
                  height: separatorHeight,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
