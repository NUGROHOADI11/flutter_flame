import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import '../bricks_breaker.dart';
import '../utils/constants.dart';
import 'game_button.dart';
import 'game_score.dart';

class GameOver extends StatelessWidget {
  const GameOver({
    super.key,
    required this.game,
  }); // Add 'super(key: key);'

  final Game game;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(panelColor),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(
                child: Text(
                  'GAME OVER',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'SCORE',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 10),
              GameScore(
                game: game,
              ),
              const SizedBox(height: 20),
              // Uncomment the following lines if 'GameHighestScore' is defined
              // const Text(
              //   'HIGHEST SCORE',
              //   style: TextStyle(fontSize: 18, color: Colors.white),
              // ),
              // const SizedBox(height: 10),
              // const GameHighestScore(),
              const SizedBox(height: 20),
              GameButton(
                onPressed: () {
                  (game as BricksBreaker).resetGame();
                },
                title: 'TRY AGAIN',
                color: continueButtonColor,
                width: 200,
              ),
              const SizedBox(height: 10),
            ],
          ), // Remove the extra closing parenthesis
        ),
      ),
    );
  }
}
