import 'package:epi_flutter_1/widgets/new_form_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
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
                mainAxisSize: MainAxisSize.min,
                children: <Widget> [
                  Row(
                    children: const <Widget> [
                      Expanded(child: NewForm(name: 'First Name')),
                      Expanded(child: NewForm(name: 'Last Name')),
                    ],
                  ),
                  const NewForm(name: 'Number'),
                  const NewForm(name: 'About', maxLines: 5),
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}

