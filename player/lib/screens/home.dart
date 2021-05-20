import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  YoutubePlayerController _controller;
  final inputlink=TextEditingController();
  int num=0;
  List ids=[
    'z40xe3plDjo',
    "b8TGCuxZr2g",
    'MmIVDjnK44w'
  ];

  void runplayer() {
    _controller = YoutubePlayerController(
      initialVideoId: ids[num],
      flags: YoutubePlayerFlags(  
        enableCaption: true,
        autoPlay: true,
        loop: true,
        mute: false,
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    runplayer();
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    _controller.pause();
    
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: _controller,
         onEnded: (data) {
           if (num<ids.length-1){
            num+=1;
           }
           else{
             num=0;
           }

          _controller
              .load(ids[num]);
         }
      ),

    builder:(context, player){
      return Scaffold(
        appBar: AppBar(
          title: Text("Muchira YoutubePlayer"),
          centerTitle: true,
          actions: [
            IconButton(onPressed: (){
            Navigator.pushReplacementNamed(context, "/live");
            },
             icon: Icon(Icons.video_call)
             )
          ],
        ),
        body: Center(child: player),
      );
    }

    );
  }
}
