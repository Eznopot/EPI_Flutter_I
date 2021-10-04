import 'package:epi_flutter_1/widgets/drawer_music_player_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mp3Player extends StatefulWidget {
  const Mp3Player({Key? key}) : super(key: key);

  @override
  State<Mp3Player> createState() => _Mp3Player();
}

class _Mp3Player extends State<Mp3Player> {
  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    List<String> titleMusics = [
      "embrace",
      "isolated",
      "prelude",
      "yuku_naghawo"
    ];
    List<String> music = [
      "embrace.mp3",
      "isolated.mp3",
      "prelude.mp3",
      "yuku-naghawo.mp3"
    ];
    List<String> title = [
      "assets/images/musical_note.jpg",
      "assets/images/musical_note.jpg",
      "assets/images/musical_note.jpg",
      "assets/images/musical_note.jpg"
    ];
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
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 20.0),
        controller: _controller,
        children: <Widget>[
          for (var i in titleMusics)
            Center(
                child: InkWell(
              onTap: () {
                print("Tapped a Container");
              },
              child: Container(
                margin: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 20.0),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                      )
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: const Image(
                  fit: BoxFit.contain,
                  image: AssetImage("assets/images/musical_note.jpg"),
                ),
              ),
            )),
        ],
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
