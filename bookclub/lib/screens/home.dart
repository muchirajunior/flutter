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

            SizedBox(height:200),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 140,
                  height: 40,
                  child: RaisedButton(
                    color:Colors.green,
                    onPressed: (){Navigator.pushReplacementNamed(context, "/login");},
                    shape: RoundedRectangleBorder(borderRadius:new BorderRadius.circular(30.0)),
                    child: Text("Get Started"),
                  ),
                ),
              ],
            )

        ],
        ),
      
    );
  }
}