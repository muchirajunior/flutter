import 'package:cloud_firestore/cloud_firestore.dart';

class OurUser{
  var uid;
  var name;
  var email;
  var dateCreated;
  var groupid;

  FirebaseFirestore firestore=FirebaseFirestore.instance;

  OurUser({this.uid,this.name,this.email,this.dateCreated,this.groupid});

  get value => null;

  
  getuser(var uid) async{
    try {
      await firestore.collection("users").doc(uid).get().then((value) {
      this.name=value['name'];
      this.email=value['email'];
      this.groupid=value['groupid'];
      });
     
    } catch (e) {
      print(e.toString());
      
    }
  }

}