import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Live extends StatefulWidget {
  @override
  _LiveState createState() => _LiveState();
}

class _LiveState extends State<Live> {

  YoutubePlayerController controller;
  final inputlink= TextEditingController();
  var link;
  void golive() {
    controller= YoutubePlayerController(
      initialVideoId:link,
      
      flags: YoutubePlayerFlags(
        autoPlay: true,
        isLive: true,
        enableCaption: true,
        loop: false,
        mute: false
      )
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    controller.pause();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }


  @override
  Widget build(BuildContext context) {
    if (link!=null){
    golive();
    return YoutubePlayerBuilder(
      player: YoutubePlayer(controller: controller),
      builder: (context, player){
        return Scaffold(
          appBar: AppBar(
            title: Text("youtube live"),
            centerTitle: true,
            actions: [
               IconButton(onPressed: (){
              Navigator.pushReplacementNamed(context, "/");
            },
             icon: Icon(Icons.home)
             )
            ],
          ),

          body: Center(child:player),

          ); 
      },
      
    );
    }
    else{
      return  Scaffold(
          appBar: AppBar(
            title: Text("youtube live"),
            centerTitle: true,
            actions: [
               IconButton(onPressed: (){
              Navigator.pushReplacementNamed(context, "/");
            },
             icon: Icon(Icons.home)
             )
            ],
          ),

          body: Center(child:Container(
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                     
                      SizedBox(height: 20),
                      Text(
                        "Meet Id",
                        style: TextStyle(color: Colors.grey[800], fontSize: 16),
                      ),
                      SizedBox(height: 12),
                      TextField(
                        controller: inputlink,
                       
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)
                                ),  
                      ),
                      ),
                      SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                              height: 50,
                              width: 150,
                              child: RaisedButton(
                                  color: Colors.blue[400],
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(30.0)),
                                  child: Text(
                                    "submit",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey[200],
                                    ),
                                  ),
                                  onPressed: () {
                                    if (inputlink.text!=""){
                                          setState(() {
                                          link=inputlink.text;
                                        });
                                    }  
                                  }
                                  ))
                        ],
                      )
                    ]),
              ),
            ),
 ),

          ); 
    }
  }
}