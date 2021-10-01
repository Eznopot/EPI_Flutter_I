import 'package:flutter/material.dart';

class ButtonHoverMusicPlayer extends StatefulWidget {
  const ButtonHoverMusicPlayer({Key? key}) : super(key: key);
  final int index = 0;
  final String title = "";

  @override
  _ButtonHoverMusicPlayerState createState() =>
      _ButtonHoverMusicPlayerState(index: index, title: title);
}

class _ButtonHoverMusicPlayerState extends State<ButtonHoverMusicPlayer> {
  final int index = 0;
  final String title = "";

  _ButtonHoverMusicPlayerState({index, title});

  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
}

