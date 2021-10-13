import 'package:epi_flutter_1/widgets/round_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key, this.name}) : super(key: key);
  final String? name;

  @override
  State<ProfilePage> createState() => _ProfilePage();
}

class _ProfilePage extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Container (
      decoration : const BoxDecoration (
        gradient: LinearGradient (
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.blueAccent, Colors.purple]
        )
      ),
      child : Scaffold (
        backgroundColor: Colors.transparent,
        body : SafeArea (
          child : Center (
            child : Column (
              children: [
                const SizedBox(height: 16),
                Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14.0),
                  ),
                  child : SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.6,
                    child: Column(
                      children: const [
                        RoundImage(
                          width: 200,
                          height: 200,
                          imageString: 'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png',
                        ),
                        SizedBox(height : 12),
                      ],
                    ),
                  ),
                )
              ],
            )
          ),
        ),
      ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

}