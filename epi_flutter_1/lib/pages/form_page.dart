import 'package:epi_flutter_1/widgets/button_default_widget.dart';
import 'package:epi_flutter_1/widgets/new_form_widget.dart';
import 'package:epi_flutter_1/widgets/round_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  late final tmpFinal;
  String? imagePath;

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
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                  RoundImage(width: 200, height: 200, imageString: imagePath ?? 'assets/images/blank-profile-picture.jpg'),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                  ButtonDefaultWidget(text: 'Take a picture', onPressed: () async {
                    tmpFinal = await Navigator.of(context).pushNamed("/takePicture");
                    imagePath = tmpFinal;
                    print(imagePath);
                    (context as Element).reassemble();
                  }),
                  Row(
                    children: const <Widget> [
                      Expanded(child: NewForm(name: 'First Name')),
                      Expanded(child: NewForm(name: 'Last Name')),
                    ],
                  ),
                  const NewForm(name: 'Number'),
                  const NewForm(name: 'About', maxLines: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget> [
                      ButtonDefaultWidget(text: 'Back', onPressed: (){
                        Navigator.of(context).pop();
                      }),
                      ButtonDefaultWidget(text: 'Save', onPressed: (){
                        Navigator.of(context).pop();
                      }),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}
