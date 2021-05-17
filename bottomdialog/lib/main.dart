import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void bottomdialog() {
    showModalBottomSheet(context: context,builder: (context) {
          return Container(
            color: Colors.grey[600],
            padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  )),
              child: Column(
                children: <Widget> [
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                     topLeft: Radius.circular(10),
                     topRight: Radius.circular(10),
                  )),
                    child: Center(child: Text(
                      "HEADING"),

                      )
                  ),
                  Text("THIS IS A BOTTOM SHEET POPUP"),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            bottomdialog();
          },
          child: Text("click me"),
        ),
      ),
    );
  }
}
