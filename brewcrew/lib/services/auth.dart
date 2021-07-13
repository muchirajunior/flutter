import "package:firebase_auth/firebase_auth.dart";
import 'package:brewcrew/models/user.dart';

class AuthService{
  final FirebaseAuth _auth= FirebaseAuth.instance;

  firebaseuser(User user){
    return user!= null ? user.uid : null;
  }

  //anonymaous signin
  Future signInAnon() async{
    try{
       UserCredential result= await _auth.signInAnonymously();
      
       return result.user;
    }
    catch(e){
        print(e.toString());
        return null;
    }
   
  }

  //email & pass signin
  
}