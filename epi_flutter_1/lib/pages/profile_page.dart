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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const <Widget> [
                      Text('First Name'),
                      Text('Last Name'),
                    ],
                  ),
                  const Text('04.93.59.89.68'),
                  const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ipsum a arcu cursus vitae congue mauris rhoncus. Malesuada bibendum arcu vitae elementum curabitur. Magna fermentum iaculis eu non. Pellentesque nec nam aliquam sem et tortor consequat. Congue mauris rhoncus aenean vel elit scelerisque mauris. Fames ac turpis egestas integer eget aliquet nibh praesent tristique. Purus non enim praesent elementum.'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget> [
                      ButtonDefaultWidget(text: 'Back', onPressed: (){
                        Navigator.pop(context);
                      }),
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
