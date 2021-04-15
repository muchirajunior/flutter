import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var number=0;
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
                  backgroundImage: AssetImage("img/pic.jpg"),
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
               Text("$number",
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
          onPressed: (){
            setState((){
              number +=1;
            });
          },
          child: Text("Add"),
        ),
      )
    );
    }
}