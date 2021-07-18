import 'package:bookclub/services/currentuser.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  TextEditingController name=TextEditingController();
  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();
  TextEditingController confirm_password=TextEditingController();

  snackbar(BuildContext context, String message){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message),)
    );
  }
  
  void register(var email, var password, BuildContext context) async{
    CurrentUser user= Provider.of<CurrentUser>(context, listen: false);

    try {
      String result=await user.signUp(email, password);
      if (result=="success"){
         Navigator.pushReplacementNamed(context, "/");
      }
      else{
        snackbar(context, result);
      }           
    } catch (e) {
      print(e.toString());
    } 
  }

  googleSignIn() async{
     CurrentUser user= Provider.of<CurrentUser>(context, listen: false);
     
     String result=await user.googleSignUp();
     if (result=="success"){
       Navigator.pop(context);
     }else{
       snackbar(context, result);
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
                           OutlineButton(
                             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                             onPressed: (){
                               googleSignIn();
                             },
                             child: Row(
                               children: [
                                 Image.asset(
                                   "assets/google_logo.png",
                                   scale: 20,
                                 ),
                                 Text(" SignUp with Google")
                               ],
                             ),
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