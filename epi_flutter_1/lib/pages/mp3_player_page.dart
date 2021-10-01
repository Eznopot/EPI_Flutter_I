import 'package:epi_flutter_1/widgets/ButtonHoverMusicPlayer.dart';
import 'package:epi_flutter_1/widgets/drawer_music_player_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mp3Player extends StatefulWidget {
  @override
  State<Mp3Player> createState() => _Mp3Player();
}

class _Mp3Player extends State<Mp3Player> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    print(width);
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('MP3Player'),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      drawer: const DrawerMusicPlayerWidget(),
      body: Center(
        child: Container(
          width: width / 1.35,
          height: height / 1.35,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              color: Colors.white,
              boxShadow: [
                new BoxShadow(
                  blurRadius: 12,
                  spreadRadius: 5,
                  color: Colors.grey,
                )
              ]),
          child: buttonsUI(),
        ),
      ),
    );
  }
}

buttonsUI() {
  return Column(
      children: List.generate(2, (int i) {
    return ButtonHoverMusicPlayer();
  }));
}
