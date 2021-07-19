import 'package:cloud_firestore/cloud_firestore.dart';

class OurUser{
  var uid;
  var name;
  var email;
  var dateCreated;
  var groupid;

  OurUser({this.uid,this.name,this.email,this.dateCreated,this.groupid});
}