import 'package:flutter/material.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';

import 'game_page.dart';
import 'utils/constants.dart';

class BricksBreakerGame extends StatelessWidget {
  const BricksBreakerGame({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Authenticator(
      child: MaterialApp(
        builder: Authenticator.builder(),
        title: gameTitle,
        theme: ThemeData.dark(),
        home: const GamePage(title: gameTitle),
      ),
    );
  }
}