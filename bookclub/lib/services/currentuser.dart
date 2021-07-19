import 'package:bookclub/services/database.dart';
import 'package:bookclub/services/model.dart';
import "package:firebase_auth/firebase_auth.dart";
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class CurrentUser extends ChangeNotifier{
 OurUser ouruser=new OurUser();

  FirebaseAuth _auth=FirebaseAuth.instance;

  Future<String> signUp(String name,String email, String password) async{
     try {
      
       ouruser.name=name;
       ouruser.email=email;
       ouruser.dateCreated=DateTime.now();
       UserCredential result=await _auth.createUserWithEmailAndPassword(email: email, password: password );
       ouruser.uid=result.user!.uid;
       await Database().createuser(ouruser);
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

  signOut() async{
    await GoogleSignIn().signOut();
    await _auth.signOut();
    ouruser.email=null;
    ouruser.name=null;
  }

  Future<String> googleSignUp() async{
    try {
      
       ouruser.dateCreated=DateTime.now();
       final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
       final GoogleSignInAuthentication auth = await googleUser!.authentication;
       ouruser.name=googleUser.displayName;
       ouruser.email=googleUser.email;
       ouruser.uid=googleUser.id;
       final credential= GoogleAuthProvider.credential(idToken: auth.idToken,accessToken: auth.accessToken);
       await _auth.signInWithCredential(credential);
       await Database().createuser(ouruser);       
        
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