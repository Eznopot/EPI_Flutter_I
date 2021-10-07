import 'package:epi_flutter_1/routes/routes.dart';
import 'package:epi_flutter_1/widgets/button_home_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
  )
  );
  runApp(
    MyApp()
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget> [
            const SizedBox(height: 16),
            const Center (
              child : Text("Swissapp", style : TextStyle(fontWeight: FontWeight.bold, fontSize: 32)),
            ),
            const SizedBox(height: 48),
            GridView.count (
              primary: false,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              padding: const EdgeInsets.all(6),
              crossAxisCount: 2,
              children : const <Widget> [
                buttonCard(name: 'Profile', route: '/profile', imageString: 'http://cdn.onlinewebfonts.com/svg/img_364496.png', color : Colors.pink),
                buttonCard(name: 'mp3player', route: '/mp3playerList', imageString: 'https://www.pngrepo.com/download/51094/musical-note.png', color : Colors.amber),
                buttonCard(name: 'Contact', route: '/contact', imageString: 'https://icons.veryicon.com/png/o/education-technology/ui-icon/contacts-77.png', color : Colors.blueAccent),
              ]
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
