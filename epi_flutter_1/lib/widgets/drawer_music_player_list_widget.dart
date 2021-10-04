import 'package:epi_flutter_1/components/tile_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerMusicPlayerListWidget extends StatelessWidget {
  final padding = const EdgeInsets.symmetric(horizontal: 12);
  const DrawerMusicPlayerListWidget({Key? key}) : super(key: key);

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
                text:"Home page",
                icon: Icons.people,
                color: const Color.fromRGBO(255, 255, 255, 1),
                hoverColor: const Color.fromRGBO(250, 250, 250, 1),
                onClicked: () {
                  Navigator.of(context).pushNamed("/");
                }
            ),
          ],
        ),
      ),
    );
  }
}