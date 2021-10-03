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
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('MP3Player'),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      drawer: const DrawerMusicPlayerWidget(),
      body: ListWheelScrollView(
          itemExtent: 235,
          physics: const FixedExtentScrollPhysics(),
          offAxisFraction: -0.5,
          diameterRatio: 1.5,
          children: [
            Center(
              child: Container(
                  margin: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                  padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 20.0),
                  decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Column(
                    children: const [
                      Image(
                        fit: BoxFit.contain,
                        image: AssetImage("assets/images/musical_note.jpg"),
                      ),
                      Text("Embrace")
                    ],
                  )),
            ),
            Center(
                child: Container(
                    margin: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 20.0),
                    padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                    decoration: const BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: Column(
                      children: const [
                        Image(
                          image: AssetImage("assets/images/musical_note.jpg"),
                          fit: BoxFit.contain,
                        ),
                        Text("isolated")
                      ],
                    ))),
            Center(
                child: Container(
                    margin: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 20.0),
                    padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                    decoration: const BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: Column(
                      children: const [
                        Image(
                          image: AssetImage("assets/images/musical_note.jpg"),
                          fit: BoxFit.contain,
                        ),
                        Text("Prelude")
                      ],
                    ))),
          ]),
    );
  }
}
