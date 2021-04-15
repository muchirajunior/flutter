import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text("JUNIOR APP"),
          centerTitle: true,
          backgroundColor: Colors.grey[850],
          elevation: 0.0,
        ),

        body: Padding(
          padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
          child:Column(
            //allign  all at the edge of the column
            crossAxisAlignment: CrossAxisAlignment.start, 
            children: <Widget>[
              //averter
              Center(
                child: CircleAvatar(
                  // backgroundImage: AssetImage("img/pic.jpg"),
                  backgroundImage: NetworkImage("data:image/jpeg;base64,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"),
                  radius: 40,
                  ),
              ),

              //divider
              Divider(
                height: 20,
                color: Colors.grey[300],
              ),
              //label 1
              Text("NAME",
                  style: TextStyle(
                       letterSpacing: 2.0,
                       color: Colors.grey,
                  ),
              ),
               
               SizedBox(height:10),//adding a space between the text
              //name label
               Text("MUCHIRA JN",
                  style: TextStyle(
                       letterSpacing: 2.0,
                       color: Colors.amber[300],
                       fontSize: 20.0,
                       fontWeight: FontWeight.bold
                  ),
              ),
               
              SizedBox(height:30), //making a bigger space btw first and second details
              //place
               Text("Place",
                  style: TextStyle(
                       letterSpacing: 2.0,
                       color: Colors.grey,
                  ),
              ),
               
               SizedBox(height:10),//adding a space between the text
              //name label
               Text("NYERI",
                  style: TextStyle(
                       letterSpacing: 2.0,
                       color: Colors.amber[300],
                       fontSize: 20.0,
                       fontWeight: FontWeight.bold
                  ),
              ),

              SizedBox(height:30), //making a bigger space btw first and second details
              //number
               Text("Coding Number",
                  style: TextStyle(
                       letterSpacing: 2.0,
                       color: Colors.grey,
                  ),
              ),
               
               SizedBox(height:10),//adding a space between the text
              //name label
               Text("231",
                  style: TextStyle(
                       letterSpacing: 2.0,
                       color: Colors.amber[300],
                       fontSize: 20.0,
                       fontWeight: FontWeight.bold
                  ),
              ),
              
              SizedBox(height:30), //vertical spacing 
              //email
              Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.grey[400],
                  ),
                  SizedBox(width:10),//horizontal spacing
                  Text("muchirajn@gmail.com",
                        style: TextStyle(
                              fontSize: 16.0,
                              letterSpacing: 1.2,
                              color: Colors.grey[300],
                        ),
                  ),
                ],
                )


            ],
            ),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: Text("Add"),
        ),
      )
    );
    }
    }