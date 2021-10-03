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
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('MP3Player'),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      drawer: const DrawerMusicPlayerWidget(),
      body: ListWheelScrollView(
          itemExtent: height / 3,
          offAxisFraction: -0.5,
          diameterRatio: 1.5,
          children: [
            Container(
                margin: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 20.0),
                decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Column(
                  children: const [
                    Image(
                      fit: BoxFit.contain,
                      image: AssetImage("assets/images/evanescence.jpg"),
                    ),
                    Text("Test")
                  ],
                )),
            Container(
                margin: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 20.0),
                padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Column(
                  children: const [
                    Image(
                      image: AssetImage("assets/images/mozart_opera_rock.jpg"),
                      fit: BoxFit.contain,
                    ),
                    Text("Mozart L'Opéra Rock")
                  ],
                ))
          ]),
    );
  }
}
