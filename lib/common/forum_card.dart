import 'package:flutter/material.dart';
import 'package:video_game_message_app/model/forum.dart';

import 'forum_name_widget.dart';

class ForumCard extends StatelessWidget {
  //get Forum from Forum.dart
  final Forum forum;
//created constructor to take form key in ForumCard() it needs parameter when it's called
  ForumCard({this.forum});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280.0,
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 90.0),
        elevation: 20.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          child: Stack(
            children: <Widget>[
              Image.asset(
                forum.imagePath,
                width: 280,
                fit: BoxFit.fitWidth,
              ),
              Positioned(
                left: 0,
                bottom: 50.0,
                child: ForumNameWidget(forum: forum),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
