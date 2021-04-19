import 'package:flutter/material.dart';
import 'package:world_time/network/worldtime.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setTime() async {
    WorldTime worldtime = WorldTime(
        location: "Nairobi", flag: "nairobi.jpg", url: "Africa/Nairobi");
    await worldtime.getTime();

    Navigator.pushReplacementNamed(context, '/home', arguments: {
      "time": worldtime.realtime,
      "location": worldtime.location,
      "flag": worldtime.flag,
      "isdaytime":worldtime.daytime
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    setTime();
    return Scaffold(
      backgroundColor: Colors.red[800],
        body: Center(
            child: SpinKitThreeBounce	(
      color: Colors.white,
      size: 50.0,
    )));
  }
}
