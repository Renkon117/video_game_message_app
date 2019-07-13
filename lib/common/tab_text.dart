import 'package:flutter/material.dart';
import 'package:video_game_message_app/styleguide/text_styles.dart';

class TabText extends StatelessWidget {
  final bool isSelected;
  final String text;
  final Function onTabTap;

// these are getting called from horizontal tab layout by TabText
  TabText({this.text, this.isSelected, this.onTabTap});
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -1.58,
      child: InkWell(
        onTap: onTabTap,
        child: AnimatedDefaultTextStyle(
          //get if the button is selected otherwise show the default tab style
          style: isSelected ? selectedTabStyle : defaultTabStyle,
          duration: const Duration(milliseconds: 600),
          child: Text(
            text,
          ),
        ),
      ),
    );
  }
}
