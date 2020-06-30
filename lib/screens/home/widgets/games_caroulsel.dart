import 'package:flutter/material.dart';
import 'package:kitsune/models/game.dart';
import 'package:kitsune/screens/home/widgets/game_card.dart';

class GamesCaroulsel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          for (var game in gameList) GameCard(game: game),
        ],
      ),
    );
  }
}
