import 'package:flutter/material.dart';
import 'package:world_time/network/worldtime.dart';

class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {

  List locations=[
    WorldTime(location:"Cairo",url: "Africa/Cairo"),
    WorldTime(location:"Nairobi",url: "Africa/Nairobi"),
    WorldTime(location:"NewYork",url: "America/New_York"),
    WorldTime(location:"Santiago",url: "America/Santiago"),
    WorldTime(location:"Jerusalem",url: "Asia/Jerusalem"),
    WorldTime(location:"Manila",url: "Asia/Manila"),
    WorldTime(location:"Tokyo",url: "Asia/Tokyo"),
    WorldTime(location:"Canary",url: "Atlantic/Canary"),
    WorldTime(location:"Sydney",url: "Australia/Sydney")
  ];

  void updateTime (index) async{
    WorldTime instance=locations[index];
    await instance.getTime();
    
    //send the data back to home screen
    Navigator.pop(context,{
      "location":instance.location,
      "time":instance.realtime,
      "isdaytime":instance.daytime,
      "flag":"flag"

    });
  }
 
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        title: Text("LOCATIONS"),
        centerTitle: true,
      ),

      body: ListView.builder(
        itemCount: locations.length,

        itemBuilder: (context, index){
              return Card(
                child: ListTile(
                      onTap: (){
                       updateTime(index);
                      },
                      title: Text(locations[index].location),
                      leading: CircleAvatar(
                        child:Icon(
                          Icons.location_city_sharp,
                         size: 30 , color: Colors.amber) ,
                        backgroundColor: Colors.blue,
                        
                      ),
                ),
              );
        }
        ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text("Home"),
      ),
    );
  }
}
