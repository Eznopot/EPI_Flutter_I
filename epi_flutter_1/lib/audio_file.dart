import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:epi_flutter_1/constants.dart' as constant;

class AudioFile extends StatefulWidget {
  const AudioFile({Key? key}) : super(key: key);

  @override
  _AudioFileState createState() => _AudioFileState();
}

class _AudioFileState extends State<AudioFile> {
  late AudioPlayer audioPlayer;
  late AudioCache audioCache;
  bool isPlaying = false;
  bool isPaused = false;
  final List<IconData> _icons = [
    Icons.pause,
    Icons.play_arrow,
  ];
  IconData playBtn = Icons.play_arrow;

  @override
  void initState() {
    super.initState();
    audioPlayer = AudioPlayer();
    audioCache = AudioCache(fixedPlayer: audioPlayer);

  }

  Widget btnStart() {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            if (!isPlaying) {
              audioCache.play(constant.musicPath);
              setState(() {
                playBtn = _icons[0];
                isPlaying = true;
              });
            } else {
              audioPlayer.pause();
              setState(() {
                playBtn = _icons[1];
                isPlaying = false;
              });
            }
          },
          icon: Icon(playBtn),
        ),
      ],
    );
  }

  Widget loadAsset() {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          btnStart(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
              padding: const EdgeInsets.only(left :20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              ),
          ),
          loadAsset(),
        ],
      ),
    );
  }
}
