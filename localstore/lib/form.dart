import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {

  TextEditingController id= TextEditingController();
  TextEditingController name= TextEditingController();
  TextEditingController age= TextEditingController();

  var userid="";
  var username=""; 
  var myage='';

  
  getdata() async{
    SharedPreferences preferences= await  SharedPreferences.getInstance();
    setState((){
       userid=preferences.getString("id")!;
       username=preferences.getString("name")!; 
       myage=preferences.getString("age")!;
       });
  }

  setdata() async{
    SharedPreferences preferences= await SharedPreferences.getInstance();
    preferences.setString("id", id.text);
    preferences.setString("name", name.text);
    preferences.setString("age", age.text);

  }

 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdata();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
           title: Text("local store example")
         ) ,

         body: Container(
           padding: EdgeInsets.all(20) ,
           child: ListView(
             children: [
               SizedBox(height:10),
               Text("id"),
               TextField(controller: id, ),
               SizedBox(height:20),
               Text("name"),
               SizedBox(height:10),
               TextField(controller: name,),
               SizedBox(height:20),
               Text("age"),
               SizedBox(height:10),
               TextField(controller: age,),
               RaisedButton(onPressed: (){ setdata(); },  child: Text("submit")),
               SizedBox(height:20),
                RaisedButton(onPressed: (){ getdata(); }, child: Text("getdata")),
                 SizedBox(height:20),
               Text("id : $userid "),
              Text("name : $username "),
              Text("age : $myage "),

             ],
           ),
         ),

    );
  }
}