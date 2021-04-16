import 'package:flutter/material.dart';
import 'quotes.dart';
import 'quotescard.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:QuotesApp(),
    );
  }
}

class QuotesApp extends StatefulWidget {
  @override
  _QuotesAppState createState() => _QuotesAppState();
}

class _QuotesAppState extends State<QuotesApp> {
  @override
  Widget build(BuildContext context) {

    List<Quote> quotes=[
    Quote(text:"out of an eater came something to eat",author:"samson"),
    Quote(text:"out of strength came something sweet",author:"SAMSON"),
    Quote(text:"comments is a sweet letter to code future",author:"Junior")  
  ];


    return Scaffold(
      backgroundColor: Colors.grey[400],
       appBar: AppBar(
         title: Text("NICE QUOTES"),
         backgroundColor: Colors.redAccent,
         centerTitle: true,   
       ),

       body: Column(
         children: quotes.map((q)=>QuotesCard(quote:q)).toList(),
       ),
    );
  }
}

