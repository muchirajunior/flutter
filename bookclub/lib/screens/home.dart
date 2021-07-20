import 'package:bookclub/screens/record.dart';
import 'package:bookclub/services/database.dart';
import 'package:bookclub/services/model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import "package:flutter/material.dart";

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  FirebaseAuth _auth = FirebaseAuth.instance;

  Database db = Database();

  OurUser user = OurUser();
  getuserdetails() async {
    await user.getuser(_auth.currentUser!.uid);
  }

  @override
  Widget build(BuildContext context) {
    getuserdetails();
    print(user.groupid);
    print(_auth.currentUser!.uid);
    print(user.name);
    print(user.email);
    return user.groupid != null
        ? Record()
        : Scaffold(
            appBar: AppBar(
              title: Text(" HOME"),
              centerTitle: true,
            ),
            body: ListView(
              padding: EdgeInsets.all(30),
              children: <Widget>[
                Image.asset("assets/logo.png", height: 180, width: 200),
                SizedBox(height: 100),
                Text(
                    "WELCOME TO BOOK CLUB SOCIETY WHERE WE READ AND REVIEW BOOKS "),
                SizedBox(height: 100),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 100,
                      height: 40,
                      child: RaisedButton(
                        color: Colors.green,
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, "/login");
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)),
                        child: Text("Create Group"),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      height: 40,
                      child: RaisedButton(
                        color: Colors.green,
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, "/record");
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)),
                        child: Text("Join Group"),
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
  }
}
