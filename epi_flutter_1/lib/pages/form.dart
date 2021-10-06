import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {

  void Function test() {
    TextFormField(
      decoration: const InputDecoration(
        hintText: 'Name',
      ),
      validator: (String? Value) {
        if (Value == null || Value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
    ),
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget> [

          ],
        ),
      ),
    );
  }
}