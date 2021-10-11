import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class buttonCard extends StatelessWidget {
  const buttonCard({
    Key? key,
    required this.name,
    required this.route,
    required this.color,
    required this.imageString,
  }) : super(key: key);
  final String route;
  final String name;
  final Color color;
  final String imageString;

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
                Navigator.of(context).pushNamed(route);
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