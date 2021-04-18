import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime{
  var location;
  var realtime;
  var url;
  var flag;

  WorldTime({this.location,this.flag,this.url});

  Future<void> getTime() async {
    try{
    Response response = await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
     Map data=jsonDecode(response.body);
     var datetime=data['utc_datetime'];
     var offset=data['utc_offset'].substring(1,3);

     DateTime time=DateTime.parse(datetime);
     time=time.add(Duration(hours:int.parse(offset)));
    
     realtime=DateFormat.jm().format(time);
     
    }
    catch(e){
      print(e);
      realtime="404 not found";
      
    }
   

  }
}