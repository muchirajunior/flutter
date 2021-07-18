import 'package:bookclub/services/currentuser.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();

  snackbar(BuildContext context,String message){
     return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message),)
    );
  }

  void login( var email, var password, BuildContext context) async{
    CurrentUser currentuser=Provider.of<CurrentUser>(context, listen:false );
    
    try {
      String result=await currentuser.logIn(email, password);
      if (result=="success"){
        Navigator.pushReplacementNamed(context, "/");
      }
      else{
        snackbar(context, result);
      }
      
    } catch (e) {
    }
  }

  googleSignIn() async{
     CurrentUser user= Provider.of<CurrentUser>(context, listen: false);
     
     String result=await user.googleSignUp();
     if (result=="success"){
       Navigator.pushReplacementNamed(context, "/");
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
                  padding: EdgeInsets.all(40),
                  child: GestureDetector(
                    onTap: ()=>Navigator.pushReplacementNamed(context, "/"),
                    child: Image.asset("assets/logo.png")),

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
                        SizedBox(height:20),
                       SizedBox(
                            width: 130,
                            height: 40,
                            child: RaisedButton(
                              color:Colors.green,
                              onPressed: (){
                                
                                login(email.text,password.text,context);
                              },
                              shape: RoundedRectangleBorder(borderRadius:new BorderRadius.circular(30.0)),
                              child: Text("login"),
                            ),
                          ),

                        SizedBox(height:20),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("have no account"),
                            FlatButton(
                              onPressed: (){ 
                                CurrentUser().googleSignOut();
                                Navigator.pushNamed(context, "/register");},
                             child: Text("register")
                            )
                          ],
                        ),

                         SizedBox(height:20),


                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             OutlineButton(
                               onPressed: (){ googleSignIn(); },
                               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                               child: Row(
                                 children: [
                                   Image.asset(
                                   "assets/google_logo.png",
                                   scale: 20,),
                                   Text(" loginin with Google")
                                 ],
                               ),
                               ),
                           ],
                         )
                        
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