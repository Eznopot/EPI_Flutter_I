import 'package:epi_flutter_1/widgets/button_default_widget.dart';
import 'package:epi_flutter_1/widgets/new_form_widget.dart';
import 'package:epi_flutter_1/widgets/round_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration (
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.blueAccent, Colors.purple]
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Card(
            color: Colors.white,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget> [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                  const RoundImage(width: 200, height: 200, imageString: 'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png'),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                  ButtonDefaultWidget(text: 'Take a picture', onPressed: (){}),
                  Row(
                    children: const <Widget> [
                      Expanded(child: NewForm(name: 'First Name')),
                      Expanded(child: NewForm(name: 'Last Name')),
                    ],
                  ),
                  const NewForm(name: 'Number'),
                  const NewForm(name: 'About', maxLines: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget> [
                      ButtonDefaultWidget(text: 'Back', onPressed: (){}),
                      ButtonDefaultWidget(text: 'Save', onPressed: (){}),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}
