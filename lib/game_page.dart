import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import 'bricks_breaker.dart';
import 'utils/constants.dart';
import 'widgets/game_over.dart';
import 'widgets/game_pause.dart';
import 'widgets/game_top_bar.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key, required this.title});
  final String title;
  @override
  State<GamePage> createState() => _GamePageState();
}

final Game game = BricksBreaker();

class _GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(panelColor),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 20),
          GameTopBar(
            game: game,
          ),
          const SizedBox(height: 10),
          Expanded(
            child: GameWidget(
              game: game,
              overlayBuilderMap: <String, Widget Function(BuildContext, Game)>{
                'gameOverOverlay': (context, game) => GameOver(
                      game: game,
                    ),
                'gamePauseOverlay': (context, game) => GamePause(
                      game: game,
                    ),
              },
            ),
          ),
          const SizedBox(height: 100)
        ],
      ),
    );
  }
}