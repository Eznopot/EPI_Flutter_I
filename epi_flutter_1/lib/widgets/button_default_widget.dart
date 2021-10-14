import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonDefaultWidget extends StatelessWidget {
  const ButtonDefaultWidget({
    required this.text,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  final String text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        primary: Colors.blueAccent,
        textStyle: const TextStyle(fontSize: 20),
      ),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
