import 'package:flutter/material.dart';
import 'package:qrflutter/qrgenerate.dart';
import 'package:qrflutter/qrscan.dart';

void main() {
  runApp(MaterialApp(

    routes: {
      "/":(context)=>QrScanner(),
      "/gen":(context)=>QrGenerator()
    },
  ));
}
