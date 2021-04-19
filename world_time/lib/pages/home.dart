import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty ? data : ModalRoute.of(context).settings.arguments;
    print(data);
    Color backcolor;
    if (data['isdaytime'] == true) {
      backcolor = Colors.lightBlue;
    } else {
      backcolor = Colors.grey[700];
    }
    return Scaffold(
        backgroundColor: backcolor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton.icon(
                onPressed: () async {
                  //getting data from pop back
                  dynamic results =
                      await Navigator.pushNamed(context, '/location');
                  setState(() {
                    data = {
                      "time": results['time'],
                      "location": results['location'],
                      "isdaytime": results['isdaytime'],
                      'flag': results['flag']
                    };
                    
                    //update the background color
                    if (data['isdaytime'] == true) {
                        backcolor = Colors.lightBlue;
                      } else {
                        backcolor = Colors.grey[700];
                      }
                  });
                },
                icon: Icon(Icons.edit_location,
                    size: 60, color: Colors.grey[300]),
                label: Text("find new Location",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[200],
                    )),
              ),
              SizedBox(height: 20),
              Text(
                data['location'],
                style: TextStyle(
                  letterSpacing: 2,
                  fontSize: 28,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              Text(
                data['time'],
                style: TextStyle(
                  letterSpacing: 2,
                  fontSize: 50,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ));
  }
}
