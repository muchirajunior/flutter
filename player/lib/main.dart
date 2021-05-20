import 'package:flutter/material.dart';
import 'package:player/screens/home.dart';
import 'package:player/screens/live.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      "/":(context)=>Home(),
      "/live":(context)=>Live()
    },
  ));
}

