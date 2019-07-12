import 'package:flutter/material.dart';
import 'package:video_game_message_app/common/app_background.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[AppBackground()],
      ),
    );
  }
}
