import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TileMenu extends StatelessWidget {
  const TileMenu({
    Key? key,
    required this.text,
    required this.icon,
    required this.color,
    required this.hoverColor,
    required this.onClicked,
  }) : super(key: key);
  final IconData icon;
  final String text;
  final Color color;
  final Color hoverColor;
  final VoidCallback? onClicked;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }
}