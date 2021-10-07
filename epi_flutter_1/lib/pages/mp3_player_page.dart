import 'package:epi_flutter_1/audio_file.dart';
import 'package:epi_flutter_1/widgets/drawer_music_player_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:epi_flutter_1/constants.dart' as constant;

class Mp3Player extends StatefulWidget {
  const Mp3Player({Key? key}) : super(key: key);

  @override
  State<Mp3Player> createState() => _Mp3Player();
}

class _Mp3Player extends State<Mp3Player> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('MP3Player'),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      drawer: const DrawerMusicPlayerWidget(),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: screenHeight / 4 ,
            child: Container(
              color: Colors.grey,
            ),
          ),
          Positioned(
              left: 0,
              right: 0,
              top: screenHeight * 0.15,
              height: screenHeight * 0.36,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: screenHeight * 0.15,
                    ),
                    AudioFile()
                  ],
                ),
              )),
          Positioned(
              top: screenHeight * 0.12,
              left: (screenWidth - 150) / 2,
              right: (screenWidth - 150) / 2,
              height: screenHeight * 0.16,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white, width: 2)),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.white, width: 2),
                        image: DecorationImage(
                            image: AssetImage(constant.musicImage),
                            fit: BoxFit.cover)),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
