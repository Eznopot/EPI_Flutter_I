import 'package:epi_flutter_1/routes/routes.dart';
import 'package:epi_flutter_1/widgets/button_home_widget.dart';
import 'package:epi_flutter_1/widgets/drawer_menu_widget.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter I',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
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
      body: Center(
        child: ListView(
          children: const <Widget> [
            Center (
              child : Text("Swissapp", style : TextStyle(fontWeight: FontWeight.bold, fontSize: 32)),
            ),
            SizedBox(height: 32),
            Center(
                child: buttonCard(name: 'Profile', route: '/profile', imageString: 'http://cdn.onlinewebfonts.com/svg/img_364496.png')
            ),
            SizedBox(height: 10),
            Center(
              child: buttonCard(name: 'mp3player', route: '/mp3playerList', imageString: 'https://www.pngrepo.com/download/51094/musical-note.png')
            ),
            SizedBox(height: 10),
            Center(
                child: buttonCard(name: 'Contact', route: '/contact', imageString: 'https://icons.veryicon.com/png/o/education-technology/ui-icon/contacts-77.png')
            ),
            SizedBox(height: 10),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
