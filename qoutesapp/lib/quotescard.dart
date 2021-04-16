import 'package:flutter/material.dart';
import 'quotes.dart';


class QuotesCard extends StatelessWidget {
  
  final Quote quote;
    
  QuotesCard({this.quote});

  @override
  Widget build(BuildContext context) {

    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
         child: Padding(
           padding: EdgeInsets.all(12),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.stretch,
             children: <Widget>[
               Text(quote.text,
                    style: TextStyle(
                       color: Colors.grey[700],
                       fontSize: 17,
                    ),
               ),
               SizedBox(height:10),
               Text(quote.author,
                    style: TextStyle(
                       color: Colors.grey[900],
                       fontSize: 18,
                    ),
               ),
             ],
           ),
         ),
    );
  }
}