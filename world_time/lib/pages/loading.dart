import 'package:flutter/material.dart';
import 'package:world_time/network/worldtime.dart';
class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {


  void setTime() async{
   
    WorldTime worldtime=WorldTime(location:"Nairobi",flag:"nairobi.jpg",url:"Africa/Nairobi");
    await worldtime.getTime();

   Navigator.pushReplacementNamed(context, '/home', arguments: {
     "time":worldtime.realtime,
     "location":worldtime.location,
     "flag":worldtime.flag
   }); 
     
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setTime();
  }

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
        body: Padding(
          padding: EdgeInsets.all(60),
          child:Text("LOADING....."),
        ) 
    );
  }
}