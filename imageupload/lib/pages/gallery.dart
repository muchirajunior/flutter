import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class Gallery extends StatefulWidget {
  @override
  _GalleryState createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  File image;
  final picker= ImagePicker();
  String baseimage;
  String imgname;
  String message='';

  Future imagepick() async{
    final pickedimage= await picker.getImage(source: ImageSource.gallery);

    setState(() {
      image=File(pickedimage.path);  
    });
  }

  void uploadImage() async{
    baseimage= base64Encode(image.readAsBytesSync());
    print(baseimage);
    imgname=image.path.split('/').last;
    try{
       setState(() {
      message="uploading image ...";
    });
    var res=await post(Uri.parse("localhost:5000/file"),body:{
       "image":baseimage,
       "name":imgname
    });

    if(res.statusCode==200){
      setState(() {
        message="image uploaded succesfully";
      });
    }
    }catch(e){
      setState(() {
        message="image upload error";
      });
    }

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Gallery image"),
        centerTitle:true,
        actions: [
          IconButton(
            onPressed: (){Navigator.pushReplacementNamed(context, '/camera'); },
            icon: Icon(Icons.camera_alt),
          )
        ],
      ),

      body: Center(
        child: image ==null ? Text("no image picked") :Column(
          children: <Widget>[
            Container(
              height:150,width:280,
              child: Image.file(image)),
            SizedBox(height:30),
            FlatButton(onPressed: (){
             uploadImage();
            },
            color: Colors.amber,
             child: Text("upload.")),
            SizedBox(height:30),
            Text(message),
          ],
        ),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: (){
            imagepick();
          },
          child: Icon(Icons.image_search),
        ),
      
    );
  }
}