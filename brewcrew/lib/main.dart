import 'package:flutter/material.dart';
import 'package:brewcrew/screens/wrapper.dart';
import "package:firebase_core/firebase_core.dart";

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: Wrapper(),
  ));
}
