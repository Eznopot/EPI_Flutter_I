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
    return Column(
      children: [
        Text(
          constant.musicTitle,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  audioPlayer.stop();
                  if (constant.index >= 1) {
                    constant.musicTitle = constant.musicList[constant.index - 1];
                    constant.musicPath = constant.musicPathList[constant.index - 1];
                    constant.index -= 1;
                    playBtn = _icons[1];
                    isPlaying = false;
                  }
                });
              },
              icon: const Icon(Icons.skip_previous),
            ),
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
            IconButton(
              onPressed: () {
                setState(() {
                  audioPlayer.stop();
                  if (constant.index < constant.musicList.length) {
                    constant.musicTitle = constant.musicList[constant.index + 1];
                    constant.musicPath = constant.musicPathList[constant.index + 1];
                    constant.index += 1;
                    playBtn = _icons[1];
                    isPlaying = false;
                  }
                });
              },
              icon: const Icon(Icons.skip_next),
            ),
          ],
        ),
      ],
    );
  }

  Widget loadAsset() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        btnStart(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
        ),
        loadAsset(),
      ],
    );
  }
}
