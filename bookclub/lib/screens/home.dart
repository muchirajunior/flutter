import "package:flutter/material.dart";

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(" HOME"),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(30),
        children: <Widget>[
          Image.asset(
            "assets/logo.png",
            height:180,
            width:200
            ),
            SizedBox(height:100),

            Text("WELCOME TO BOOK CLUB SOCIETY WHERE WE READ AND REVIEW BOOKS "),

            SizedBox(height:100),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 100,
                  height: 40,
                  child: RaisedButton(
                    color:Colors.green,
                    onPressed: (){Navigator.pushReplacementNamed(context, "/login");},
                    shape: RoundedRectangleBorder(borderRadius:new BorderRadius.circular(30.0)),
                    child: Text("Create Group"),
                  ),
                ),
                 SizedBox(
                  width: 100,
                  height: 40,
                  child: RaisedButton(
                    color:Colors.green,
                    onPressed: (){Navigator.pushReplacementNamed(context, "/login");},
                    shape: RoundedRectangleBorder(borderRadius:new BorderRadius.circular(30.0)),
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