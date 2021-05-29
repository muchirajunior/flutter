import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:highlight_text/highlight_text.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

void main() {
  runApp(MaterialApp(
    home: Home(),
   
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  stt.SpeechToText speech= stt.SpeechToText();
  
  bool listening = false;
  String text = "press the button to talk";
  double confidence = 1.0;

  listen() async{
    if(!listening){
      bool available= await speech.initialize(
        onStatus: (val)=>print("status $val"),
        onError: (val) => print("status $val"),
      );
     
      if(available){
        
        setState(() {
          listening=true;
          });

          speech.listen(
            onResult: (val) => setState((){
              text=val.recognizedWords;
              if(val.hasConfidenceRating && val.confidence>0){
                confidence=val.confidence;
              }
            })
            
          );
      
      }
    }
    else{
      setState(() {
        listening=false;
        speech.stop();
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Confidence ${(confidence * 100).toStringAsFixed(1)}"),
         backgroundColor: Colors.red,
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        reverse: true,
        child: Container(
          padding: EdgeInsets.fromLTRB(30, 30, 30, 150),
          child: Text(
             text,
             style: TextStyle(
               fontSize:18,
             ),
          ),
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: AvatarGlow(
        animate: listening,
        glowColor: Colors.red,
        endRadius: 75.0,
        duration: const Duration(milliseconds: 2000),
        repeatPauseDuration: const Duration(milliseconds: 100),
        repeat: true,
        child: FloatingActionButton(
          backgroundColor:Colors.red,
          onPressed: ()=>listen(),
          child: Icon(listening ? Icons.mic : Icons.mic_none),
        ),
      ),
    );
  }
}
