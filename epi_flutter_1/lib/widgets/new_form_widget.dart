import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewForm extends StatelessWidget {
  const NewForm({
    Key? key,
    required this.name,
    this.maxLines,
    this.myController
  }) : super(key: key);

  final String name;
  final int? maxLines;
  final TextEditingController? myController;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(15),
        child :TextFormField(
          controller: myController,
          maxLines: maxLines ?? 1,
          decoration: InputDecoration(
            hintText: name,
          ),
          validator: (String? Value) {
            if (Value == null || Value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
        )
    );
  }
}