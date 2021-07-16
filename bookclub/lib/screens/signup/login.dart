import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,

        children: <Widget>[
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(50),
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(50),
                  child: Image.asset("assets/logo.png"),
                  ),

                  Container(
                    padding: EdgeInsets.all(20),
                    decoration:BoxDecoration( 
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text("LOGIN "),
                        SizedBox(height:20),
                        TextField(
                           decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(15.0),
                              ),
                            ),
                            hintText: "email",
                            fillColor: Colors.white),
                        ),
                        SizedBox(height:20),
                         TextField(
                           obscureText: true,
                           decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(15.0),
                              ),
                            ),
                            hintText: "password",
                            fillColor: Colors.white),
                        ),
                        SizedBox(height:20),
                       SizedBox(
                            width: 130,
                            height: 40,
                            child: RaisedButton(
                              color:Colors.green,
                              onPressed: (){},
                              shape: RoundedRectangleBorder(borderRadius:new BorderRadius.circular(30.0)),
                              child: Text("login"),
                            ),
                          ),

                        SizedBox(height:20),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("dont have account"),
                            FlatButton(
                              onPressed: (){ Navigator.pushReplacementNamed(context, "/register");},
                             child: Text("register")
                            )
                          ],
                        ),

                         SizedBox(height:20),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("login with google account"),
                            FlatButton(
                              onPressed: (){},
                             child: Image.asset(
                               "assets/google_logo.png",
                               scale: 20,
                               
                               )
                            )
                          ],
                        ),
                        
                      ],
                    ),
                    
                  ),
              ],
              )
          )
        ],
      ),
      
    );
  }
}