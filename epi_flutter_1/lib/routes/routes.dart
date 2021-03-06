import 'package:epi_flutter_1/models/data_profile.dart';
import 'package:epi_flutter_1/pages/display_picture_page.dart';
import 'package:epi_flutter_1/pages/form_page.dart';
import 'package:epi_flutter_1/pages/list_contactes.dart';
import 'package:epi_flutter_1/pages/mp3_player_list_page.dart';
import 'package:epi_flutter_1/pages/mp3_player_page.dart';
import 'package:epi_flutter_1/pages/profile_page.dart';
import 'package:epi_flutter_1/pages/take_pictures_page.dart';
import 'package:epi_flutter_1/pages/profile_page.dart';
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
      case "/ProfilePage":
        if (args is DataProfile) {
          return MaterialPageRoute(builder: (_) => ProfilePage(profile: args));
        }
        return _errorRoute();
      case "/FormPage":
        return MaterialPageRoute(builder: (_) => const FormPage());
      case "/takePicture":
        return MaterialPageRoute(builder: (_) => TakePicturePage());

      case "/ListContactesPage":
        return MaterialPageRoute(builder: (_) => ListContactesPage());

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