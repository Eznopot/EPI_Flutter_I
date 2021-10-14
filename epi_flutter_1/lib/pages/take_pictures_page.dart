import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'display_picture_page.dart';

class TakePicturePage extends StatefulWidget {

  @override
  State<TakePicturePage> createState() => _TakePicturePage();
}

class _TakePicturePage extends State<TakePicturePage> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;
  late CameraDescription camera;

  Future<CameraDescription> getCameraDescription() async {
    WidgetsFlutterBinding.ensureInitialized();
    final cameras = await availableCameras();
    return cameras.first;
  }

  @override
  void initState() {
    super.initState();
    getCameraDescription().then((value) {
      setState(() {
        camera = value;
        _controller = CameraController(
          camera,
          ResolutionPreset.medium,
        );
        _initializeControllerFuture = _controller.initialize();
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column (
        children: [
          Expanded(
            child: FutureBuilder<void>(
              future: _initializeControllerFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return CameraPreview(_controller);
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              },
            ),
          ),
          IconButton(
            icon: const Icon(Icons.camera_alt),
            onPressed: () async {
              takePicture();
            },
          ),
        ],
      ),
    );
  }

  void takePicture() async {
    await _initializeControllerFuture;
    final image = await _controller.takePicture();
    final result = await Navigator.of(context).pushNamed(
      "/displayPicture", arguments : image.path
    );
    if (result != null) {
      Navigator.pop(context, result);
    }
  }

}