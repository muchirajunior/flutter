import 'package:flutter/material.dart';
import 'quotes.dart';

void main() {
  runApp(MaterialApp(
    home:QuoteApp()
  ));
}

class QuoteApp extends StatefulWidget {
  @override
  _QuoteAppState createState() => _QuoteAppState();
}

class _QuoteAppState extends State<QuoteApp> {

  List<Quotes> quotes=[
    Quotes(quote:"out of an eater came something to eat",author:"samson"),
    Quotes(quote:"out of strength came something sweet",author:"SAMSON"),
    Quotes(quote:"comments is a sweet letter to code future",author:"Junior"),
    
  ];

  Widget qTemplate(quote){
    return Card(
      margin: EdgeInsets.fromLTRB(16,16,16,0),
     
     child: Padding(
       padding: EdgeInsets.all(12),
     
      child: Column(
        crossAxisAlignment:CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(quote.quote,
            style: TextStyle(
                fontSize:18,
                color: Colors.grey[600]
            ),
          ),
            SizedBox(height:8),

            Text(quote.author,
            style: TextStyle(
                fontSize:18,
                color: Colors.grey[800],
            ),
            ),
             
        ]
      ),
     ),

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Junior Quotes"),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
      ),

      body: Column(
        children: quotes.map((q)=> qTemplate(q)).toList(),
        ),


    );
  }
}