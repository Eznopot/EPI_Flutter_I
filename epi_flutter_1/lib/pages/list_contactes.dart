import 'package:epi_flutter_1/models/data_profile.dart';
import 'package:epi_flutter_1/services/cache_manager.dart';
import 'package:epi_flutter_1/widgets/button_list_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListContactesPage extends StatefulWidget {
  const ListContactesPage({Key? key}) : super(key: key);

  @override
  State<ListContactesPage> createState() => _ListContactesPageState();
}

class _ListContactesPageState extends State<ListContactesPage> {
//  final List<List<String>> entries = List<List<String>>[['', ''], ['', '']];
  List<DataProfile>? profiles;

  @override
  void initState() {
    CacheManager.readData("profile").then((result) {
      setState(() {
        profiles = result;
      });
    });
    super.initState();
  }

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
              child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: profiles != null ? profiles!.length : 0,
                itemBuilder: (BuildContext context, int index){
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(10.0))
                    ),
                    margin: const EdgeInsets.all(15.0),
                    height: 50,
                    child: InkWell(
                      onTap: () {
                        if (profiles![index] != null) {
                          Navigator.of(context).pushNamed("/ProfilePage", arguments : profiles![index]);
                        }
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget> [
                          Text('First Name :' + profiles![index].firstName!),
                          Text('Last Name :' + profiles![index].lastName!),
                        ]
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {Navigator.of(context).pushNamed('/FormPage');},
          child: const Icon(Icons.add_box),
          backgroundColor: Colors.blueAccent,
        ),
      ),
    );
  }
}
