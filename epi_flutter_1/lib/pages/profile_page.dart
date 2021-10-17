import 'package:epi_flutter_1/models/data_profile.dart';
import 'package:epi_flutter_1/widgets/button_default_widget.dart';
import 'package:epi_flutter_1/widgets/round_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key, required this.profile}) : super(key: key);

  final DataProfile profile;

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
//                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget> [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                  RoundImage(width: 200, height: 200, imageString: widget.profile.getImagePath() ?? "assets/images/blank-profile-picture.jpg", cached: widget.profile.getImagePath() != null ? true : false),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget> [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.blue,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Center(
                          child: Text('First Name :\n\n' + widget.profile.getLastName()!),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.blue,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Center(
                          child: Text('Last Name :\n\n' + widget.profile.getLastName()!),
                        ),
                      ),
                    ],
                  ),
                  Text(widget.profile.getTelephone() ?? "no number"),
                  Text(widget.profile.getDescription() ?? "no description"),
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
