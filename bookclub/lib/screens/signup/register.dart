import 'package:bookclub/services/currentuser.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Register extends StatelessWidget {
  TextEditingController name=TextEditingController();
  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();
  TextEditingController confirm_password=TextEditingController();

  void register(var email, var password, BuildContext context) async{
    CurrentUser user= Provider.of<CurrentUser>(context, listen: false);

    try {
      if (await user.signUp(email, password))
          Navigator.pop(context);
    } catch (e) {
      print(e.toString());
    } 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,

        children: <Widget>[
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(20),
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
                        Text("Register "),
                        SizedBox(height:20),
                         TextField(
                           controller: name,
                           autofocus: true,
                           decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(15.0),
                              ),
                            ),
                            hintText: "name",
                            fillColor: Colors.white),
                        ),
                        SizedBox(height:20),
                        TextField(
                          controller: email,
                          autofocus: true,
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
                           controller: password,
                           autofocus: true,
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
                      
                         TextField(
                           controller: confirm_password,
                           obscureText: true,
                           autofocus: true,
                           decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(15.0),
                              ),
                            ),
                            hintText: "confirm password",
                            fillColor: Colors.white),
                        ),
                        SizedBox(height:20),
                       SizedBox(
                            width: 130,
                            height: 40,
                            child: RaisedButton(
                              color:Colors.green,
                              onPressed: (){
                                 print("${name.text},${email.text},${password.text},${confirm_password.text}");
                                if (password.text==confirm_password.text){
                                  register(email.text, password.text, context);
                                 
                                }else{
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content:Text("password do not match confirmed password"),
                                      duration: Duration(seconds: 3),
                                      )
                                  );
                                }
                              },
                              shape: RoundedRectangleBorder(borderRadius:new BorderRadius.circular(30.0)),
                              child: Text("register"),
                            ),
                          ),

                        SizedBox(height:20),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("have an account"),
                            FlatButton(
                              onPressed: (){Navigator.pop(context);},
                             child: Text("login")
                            )
                          ],
                        ),

                         SizedBox(height:20),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("register with google"),
                            FlatButton(
                              onPressed: (){
                                CurrentUser().signInAnon();
                              },
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