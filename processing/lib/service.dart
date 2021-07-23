import 'dart:io';
import 'package:path_provider/path_provider.dart';

class Database{
 

  Future<File> get localfile async{
   
    final dir=await getApplicationDocumentsDirectory();
    final path = dir.path;
    print(path.toString());

    return File("$path/data.json");
  
  }

 Future readData() async{
    try {
      final file=await localfile;
      String body=file.readAsString() as String;
      if (body==null){
        return "empty file";
      }else{
          return body;
      }   
    } catch (e) {
      return e.toString();
    }
    
  }

  Future writeData(String data) async{
    final file=await localfile;
    return file.writeAsString(data);
  }

}