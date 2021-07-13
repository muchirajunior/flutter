import 'package:flutter/material.dart';
import 'package:brewcrew/services/auth.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  AuthService auth=new AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[200],

      appBar: AppBar(
         backgroundColor:Colors.brown[400],
         title:Text('BrewCrew SignIn '),
         centerTitle:true
      ),

      body: Container(
        padding: EdgeInsets.symmetric(vertical:20, horizontal:50),

        child: RaisedButton(
          child: Text('Anon Signin'),
          onPressed: () async{
            var result=await auth.signInAnon();

            if (result==null){
              print('error sign in');
            }
            else{
              print(result.uid);
            }

          },
          ),
      ),
      
    );
  }
}