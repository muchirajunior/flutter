import 'package:bookclub/services/model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Database{
  FirebaseFirestore firestore=FirebaseFirestore.instance;

  Future<String> createuser(OurUser user) async{

    try {
      await firestore.collection("users").doc(user.uid).set({
       "name":user.name,
       "email":user.email,
       "dateCreated":user.dateCreated,
       "groupid":user.groupid
      });
      
    } catch (e) {
    }

    return "";
  }

  
}