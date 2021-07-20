import 'package:flutter/material.dart';

class Record extends StatelessWidget {
  var booname = "river and the source";
  var duetime = "8 days";
  var nextreveal = "20 hours";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(20),
          children: <Widget>[
            SizedBox(height: 40),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        "assets/logo.png",
                        height: 100,
                        width: 50,
                      ),
                      Text(" $booname \n due in: $duetime")
                    ],
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 40,
                    width: 150,
                    child: RaisedButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: Colors.green,
                      child: Text("Finish Book"),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.white,
              ),
              child: Text("next book reveal in:\n \n $nextreveal"),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 40,
              width: 180,
              child: OutlineButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Text("Book Club History"),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 40,
              width: 180,
              child: RaisedButton(
                onPressed: () {Navigator.pushReplacementNamed(context, "/login"); },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                color: Colors.green,
                child: Text("CHAT"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
