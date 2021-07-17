import "package:firebase_auth/firebase_auth.dart";
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class CurrentUser extends ChangeNotifier{
  var uid;
  var email;

  FirebaseAuth _auth=FirebaseAuth.instance;

  Future<String> signUp(String email, String password) async{
     try {
       UserCredential result=await _auth.createUserWithEmailAndPassword(email: email, password: password, );

       if (result.user != null){
         print(result.user);
         return "success";
       } else{
      return result.toString();
    }
   
     } catch (e) {
        return e.toString();
      
     }

  }

  Future<String> googleSignUp() async{
  GoogleSignIn _googleSignIn = GoogleSignIn(
  scopes: [
    'email',
    'https://www.googleapis.com/auth/contacts.readonly',
    ],
   );

    return "";
  } 

  Future<String> logIn(var email,var password) async{
    try{
    UserCredential result=await _auth.signInWithEmailAndPassword(email: email, password: password);
    if (result.user != null){
      print(result.user);
      return "success";
    }
    else{
      return result.toString();
    }
   
    }
    catch(e){
      print(e.toString());
      return e.toString();
    }
  }
 
}