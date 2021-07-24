import 'package:flutter/material.dart';
import 'package:imageupload/pages/camera.dart';
import 'package:imageupload/pages/gallery.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      "/":(context)=>Gallery(),
      "/camera":(context) =>Camera()
    },
  ));
}