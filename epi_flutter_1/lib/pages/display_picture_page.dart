import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DisplayPicturePage extends StatelessWidget {
  final String imagePath;

  const DisplayPicturePage({Key? key, required this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column (
        children : [
          Expanded(
            child : Image.file(File(imagePath))
          ),
          Row (
            children : [
              Expanded(
                child : Container(
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Cancel"),
                  ),
                ),
              ),
              Expanded(
                child : Container(
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context, imagePath);
                    },
                    child: const Text("Save"),
                  ),
                ),
              ),
            ]
          )
        ],
      )
    );
  }
}