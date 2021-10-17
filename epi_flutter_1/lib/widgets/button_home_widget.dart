import 'package:epi_flutter_1/models/data_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class buttonCard extends StatelessWidget {
  const buttonCard({
    Key? key,
    required this.name,
    required this.route,
    required this.color,
    required this.imageString,
    this.profile,
  }) : super(key: key);
  final String route;
  final String name;
  final Color color;
  final String imageString;
  final DataProfile? profile;

  @override
  Widget build(BuildContext context) {
    return Column (
      children: <Widget> [
        Card(
            semanticContainer: true,
            elevation: 6,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100.0),
            ),
            margin: const EdgeInsets.all(10),
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                if (profile != null) {
                  Navigator.of(context).pushNamed(route, arguments: profile);
                } else {
                  Navigator.of(context).pushNamed(route);
                }
              },
              child: SizedBox(
                width: 136,
                height : 136,
                child : Container (
                  padding: const EdgeInsets.all(30.0),
                  child : Image.network(
                    imageString,
                    color: color,
                    fit: BoxFit.contain,
                  ),
                )
              ),
            )
        ),
        const SizedBox(height: 12),
        Center(
          child: Text(name, style: const TextStyle(fontSize: 16)),
        )
      ],
    );
  }
}

/*
      child: Image.network(
        imageString,
        fit: BoxFit.fill,
      ),

 */