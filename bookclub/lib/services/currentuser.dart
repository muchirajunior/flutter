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
       UserCredential result=await _auth.createUserWithEmailAndPassword(email: email, password: password );

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

  googleSignOut() async{
    await GoogleSignIn().signOut();
  }

  Future<String> googleSignUp() async{
    try {
        
       final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
        final GoogleSignInAuthentication auth = await googleUser!.authentication;
      
        final credential= GoogleAuthProvider.credential(idToken: auth.idToken,accessToken: auth.accessToken);
        await _auth.signInWithCredential(credential);
        
        return "success";

    } catch (e) {
       print(e.toString());
      return e.toString();
    }
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