import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class buttonCard extends StatelessWidget {
  const buttonCard({
    Key? key,
    required this.name,
    required this.route,
    required this.imageString,
  }) : super(key: key);
  final String route;
  final String name;
  final String imageString;

  @override
  Widget build(BuildContext context) {
    return Column (
      children: <Widget> [
        Card(
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100.0),
            ),
            margin: const EdgeInsets.all(10),
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                Navigator.of(context).pushNamed(route);
              },
              child: SizedBox(
                width: 200,
                height : 200,
                child : Container (
                  padding: const EdgeInsets.all(30.0),
                  child : Image.network(
                    imageString,
                    fit: BoxFit.contain,
                  ),
                )
              ),
            )
        ),
        const SizedBox(height: 12),
        Center(
          child: Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
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