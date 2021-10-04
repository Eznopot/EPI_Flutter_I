import 'package:epi_flutter_1/widgets/drawer_music_player_list_widget.dart';
import 'package:epi_flutter_1/constants.dart' as constant;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mp3PlayerList extends StatefulWidget {
  const Mp3PlayerList({Key? key}) : super(key: key);

  @override
  State<Mp3PlayerList> createState() => _Mp3PlayerList();
}

class _Mp3PlayerList extends State<Mp3PlayerList> {
  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('MP3Player'),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      drawer: const DrawerMusicPlayerListWidget(),
      body: ListView(
        itemExtent: 235,
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 20.0),
        controller: _controller,
        children: <Widget>[
          for (int i = 0; i < constant.musics.length; ++i)
            Center(
                child: InkWell(
              onTap: () {
                constant.music = constant.musics[i];
                print(constant.music);
                Navigator.of(context).pushNamed("/mp3player");
              },
              child: Container(
                margin: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 20.0),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 20.0,
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
