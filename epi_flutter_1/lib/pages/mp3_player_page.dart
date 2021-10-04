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
    List<String> titleMusics = ["embrace", "isolated", "prelude", "yuku_naghawo"];
    List<String> music = ["embrace.mp3", "isolated.mp3", "prelude.mp3", "yuku-naghawo.mp3"];
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('MP3Player'),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      drawer: const DrawerMusicPlayerWidget(),
      body: ListView(
          itemExtent: 235,
          physics: const FixedExtentScrollPhysics(),
          padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 20.0),
          children: [
            for (var i in titleMusics)
            Center(
              child: InkWell (
                onTap: () {
                  print("Tapped a Container");
                },
                child: Container(
                    margin: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                    padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 20.0),
                    decoration: const BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: Column(
                      children: [
                        const Image(
                          fit: BoxFit.contain,
                          image: AssetImage("assets/images/musical_note.jpg"),
                        ),
                        Text(i)
                      ],
                    )
                ),
              )
            ),
          ]),
    );
  }
}
