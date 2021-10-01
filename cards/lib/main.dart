import 'package:cards/cards.dart';
import 'package:cards/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {                                                                                         @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
    
        primarySwatch: Colors.amber,
      ),
      routes: {
        '/': (context)=>Home(),
        '/cards':(context)=>Cards()
      },
    );
  }
}
