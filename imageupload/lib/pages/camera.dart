import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_cropper/image_cropper.dart';
import 'dart:io';

class Camera extends StatefulWidget {
  @override
  _CameraState createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  File image;
  final pick=ImagePicker();

  Future imagetake() async{
    final photo= await pick.getImage(source: ImageSource.camera);
    final croppedphoto=await ImageCropper.cropImage(
      sourcePath: photo.path,
      aspectRatio: CropAspectRatio(ratioX: 1, ratioY: 1),
      compressQuality: 100,
      );

    setState(() {
      image=File(croppedphoto.path);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CAMERA '),
        centerTitle: true,
         actions: [
          IconButton(
            onPressed: (){Navigator.pushReplacementNamed(context, '/'); },
            icon: Icon(Icons.photo),
          )
        ],
      ),

      body: Center(
           child: image == null ? Text(" no photo taken") : Container(
             height: 180,
             width: 260,
             child: ClipRRect(
               borderRadius: BorderRadius.circular(20),
               child: Image.file(image)
               )
             ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          imagetake();
        },
        child: Icon(Icons.camera_alt),
      ),
      
    );
  }
}