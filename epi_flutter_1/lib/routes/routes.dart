import 'package:epi_flutter_1/pages/mp3_player_list_page.dart';
import 'package:epi_flutter_1/pages/mp3_player_page.dart';
import "package:flutter/material.dart";
import "package:epi_flutter_1/main.dart";

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => MyHomePage(title: 'Flutter I',));
      case "/mp3playerList":
        return MaterialPageRoute(builder: (_) => Mp3PlayerList());
      case "/mp3player":
        return MaterialPageRoute(builder: (_) => Mp3Player());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
            title: const Text("Error")
        ),
        body: const Center(
          child: Text("ERROR in navigation"),
        ),
      );
    });
  }
}