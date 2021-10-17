import 'dart:convert';

import 'package:epi_flutter_1/routes/routes.dart';
import 'package:epi_flutter_1/services/cache_manager.dart';
import 'package:epi_flutter_1/widgets/button_home_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'models/data_profile.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
  )
  );
  runApp(
    const MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter I',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //brightness: Brightness.dark,
        fontFamily: 'nexa',
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      onGenerateRoute: Routes.generateRoute,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DataProfile? profile;
  String name = "";

  @override
  void initState() {
    CacheManager.readData("profile").then((result) {
      setState(() {
        if (result == null) {
          Navigator.of(context).pushNamed("/FormPage").then((value) => {
            setState(() {
              List<DataProfile>? tmp = [];
              profile = value as DataProfile;
              if (profile != null) {
                tmp.add(profile!);
              }
              CacheManager.writeData(tmp).then((_) {
              });
              name = profile!.getFirstName()!;
              (context as Element).reassemble();
            })
          });
        } else {
          profile = result[0];
          print(profile!.getImagePath());
        }
        if (profile?.getFirstName() != null) {
          name = profile!.getFirstName()!;
        }
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget> [
            const SizedBox(height: 16),
            Row(
              children: <Widget> [
                  Expanded(
                    child: IconButton(
                      icon: const Icon(Icons.settings),
                      onPressed: () {},
                    ),
                  ),
                  const Spacer(),
                  const Text("Swissapp", style : TextStyle(fontWeight: FontWeight.bold, fontSize: 32)),
                  const Spacer(flex: 2),
                ]
            ),
            const SizedBox(height: 16),
            Center(
              child : SizedBox(height: 1, width: MediaQuery.of(context).size.width * 0.85,
                child : Container(
                  color: Colors.black,
                )
              )
            ),
            const SizedBox(height: 32),
            SizedBox (
              width: MediaQuery.of(context).size.width * 0.90,
              child : Text("Hello $name", textAlign: TextAlign.left, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            ),
            const SizedBox(height: 24),
            GridView.count (
              primary: false,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              padding: const EdgeInsets.all(6),
              crossAxisCount: 2,
              children : <Widget> [
                buttonCard(name: 'Profile', route: '/ProfilePage', imageString: 'http://cdn.onlinewebfonts.com/svg/img_364496.png', color : Colors.pink, profile: profile),
                const buttonCard(name: 'mp3player', route: '/mp3playerList', imageString: 'https://www.pngrepo.com/download/51094/musical-note.png', color : Colors.amber),
                const buttonCard(name: 'Contact', route: '/ListContactesPage', imageString: 'https://icons.veryicon.com/png/o/education-technology/ui-icon/contacts-77.png', color : Colors.blueAccent),
              ]
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
