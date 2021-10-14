import 'package:epi_flutter_1/pages/display_picture_page.dart';
import 'package:epi_flutter_1/pages/form.dart';
import 'package:epi_flutter_1/pages/mp3_player_list_page.dart';
import 'package:epi_flutter_1/pages/mp3_player_page.dart';
import 'package:epi_flutter_1/pages/profile_page.dart';
import 'package:epi_flutter_1/pages/take_pictures_page.dart';
import 'package:epi_flutter_1/pages/profile.dart';
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
      case "/profile":
        if (args is String) {
          return MaterialPageRoute(builder: (_) => ProfilePage(name : args));
        }
        return MaterialPageRoute(builder: (_) => const ProfilePage());
      case "/ProfilePage":
        return MaterialPageRoute(builder: (_) => ProfilePage());
      case "/FormPage":
        return MaterialPageRoute(builder: (_) => FormPage());
      case "/takePicture":
        return MaterialPageRoute(builder: (_) => TakePicturePage());
      case "/displayPicture":
        if (args is String) {
          return MaterialPageRoute(builder: (_) => DisplayPicturePage(imagePath : args));
        }
        return _errorRoute();
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