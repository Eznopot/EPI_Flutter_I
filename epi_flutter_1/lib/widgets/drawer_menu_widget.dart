import 'package:epi_flutter_1/components/tile_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerMenuWidget extends StatelessWidget {
  final padding = const EdgeInsets.symmetric(horizontal: 12);
  const DrawerMenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: const Color.fromRGBO(50, 70, 205, 1),
        child: ListView(
          padding: padding,
          children: <Widget>[
            const SizedBox(height: 65),
            TileMenu(
                text:"Home Page",
                icon: Icons.people,
                color: const Color.fromRGBO(255, 255, 255, 1),
                hoverColor: const Color.fromRGBO(250, 250, 250, 1),
                onClicked: () {
                  Navigator.of(context).pushNamed("/");
                }
            ),
            TileMenu(
              text:"MP3 player page",
              icon: Icons.people,
              color: const Color.fromRGBO(255, 255, 255, 1),
              hoverColor: const Color.fromRGBO(250, 250, 250, 1),
              onClicked: () {
                Navigator.of(context).pushNamed("/mp3playerList");
              },
            ),
            const SizedBox(height: 12),
            TileMenu(
              text:"Form Page",
              icon: Icons.people,
              color: const Color.fromRGBO(255, 255, 255, 1),
              hoverColor: const Color.fromRGBO(250, 250, 250, 1),
              onClicked: () {
                Navigator.of(context).pushNamed("/FormPage");
              },
            ),
          ],
        ),
      ),
    );
  }
}