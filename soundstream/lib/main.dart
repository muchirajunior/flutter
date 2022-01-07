import 'dart:async';
import 'dart:typed_data';
import 'package:flutter/material.dart';

import 'package:sound_stream/sound_stream.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key ? key}) :super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final RecorderStream _recorder = RecorderStream();
  final PlayerStream _player = PlayerStream();

 final  List<Uint8List> _micChunks = [];
  bool _isRecording = false;
  bool _isPlaying = false;

  StreamSubscription? _recorderStatus;
  StreamSubscription? _playerStatus;
  StreamSubscription? _audioStream;

  @override
  void initState() {
    super.initState();
    initPlugin();
  }

  @override
  void dispose() {
    _recorderStatus?.cancel();
    _playerStatus?.cancel();
    _audioStream?.cancel();
    super.dispose();
  }

    _playController()async{
     _isRecording ? _recorder.stop() : _recorder.start();
     await Future.delayed(const Duration(seconds: 1));
     _isPlaying ? _player.stop() : _play();
   }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlugin() async {
    _recorderStatus = _recorder.status.listen((status) {
      if (mounted){
        setState(() {
          _isRecording = status == SoundStreamStatus.Playing;
        });}
    });

 

    _audioStream = _recorder.audioStream.listen((data) {
      if (_isPlaying) {
        _player.writeChunk(data);
      } else {
        _micChunks.add(data);
      }
    });

    _playerStatus = _player.status.listen((status) {
      if (mounted){
        setState(() {
          _isPlaying = status == SoundStreamStatus.Playing;
        });}
    });

    await Future.wait([
      _recorder.initialize(),
      _player.initialize(),
    ]);
  }

  void _play() async {
    await _player.start();

    if (_micChunks.isNotEmpty) {
      for (var chunk in _micChunks) {
        await _player.writeChunk(chunk);
      }
      _micChunks.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/mic.jpg'), fit: BoxFit.cover)
          ),

          child: SafeArea(
            child: Center(
              child: Column(
                children: [
                  const SizedBox(height: 100,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.deepPurple,
                        child: Icon(Icons.mic, size: 40,),
                      ),
                      SizedBox(width:10),
                      Text("MIC APP", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),)
                    ],
                  ),
                  const SizedBox(height: 30,),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(20),
                      child: Text("lets play your sound on the speaker", style: TextStyle(color: Colors.grey[300]),),
                    ),
                  ),
                  Container(
                    margin:const EdgeInsets.all(30),
                    padding:const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        const Text("current status", style: TextStyle(color: Colors.grey),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconButton(
                              iconSize: 40.0,
                              icon: Icon(_isRecording ? Icons.mic : Icons.mic_off, color: Colors.indigo[300],),
                              onPressed: _isRecording ? _recorder.stop : _recorder.start,
                            ),
                            IconButton(
                              iconSize: 40.0,
                              icon: Icon(_isPlaying ? Icons.pause : Icons.play_arrow, color: Colors.indigo[300],),
                              onPressed: _isPlaying ? _player.stop : _play,
                            ),
                             IconButton(
                              iconSize: 60.0,
                              icon: Icon(_isPlaying ? Icons.pause : Icons.play_arrow,  color: Colors.indigo[800],),
                              onPressed: _playController,
                            ),
                          ],
                        ),
                       
                      ],
                    ),
                  ),
                      
                  const SizedBox(height: 40,),
                      
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end ,
                    children: <Widget>[
                      Text("@muchirajunior  ",style: TextStyle(color: Colors.grey[400], fontWeight: FontWeight.bold, fontSize: 16) )
                    ],
                  ),
                      
                  const SizedBox(height: 10,)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}