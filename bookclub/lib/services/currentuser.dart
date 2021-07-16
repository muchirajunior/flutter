import "package:firebase_auth/firebase_auth.dart";
import 'package:flutter/cupertino.dart';

class CurrentUser extends ChangeNotifier{
  var uid;
  var email;

  FirebaseAuth _auth=FirebaseAuth.instance;

  Future<bool> signUp(String email, String password) async{
     try {
       UserCredential results=await _auth.createUserWithEmailAndPassword(email: email, password: password);

       if (results.user != null){
         print(results.user);
         return true;
       }
       
     } catch (e) {
       print(e.toString());
     }

     return false;
  }

  Future<bool> logIn() async{
     return false;
  }

  //anonymaous signin
   signInAnon() async{
    try{
       UserCredential result= await _auth.signInAnonymously();      
       print(result.user);
    }
    catch(e){
        print(e.toString());
    }
   
  }
}