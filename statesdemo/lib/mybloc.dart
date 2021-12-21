import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:statesdemo/services.dart';

class CountData extends Cubit<Map>{
  CountData() :super({ "number":0, 'data':[] });

  Future addData()async{ 
     await generateData(state);
     emit({...state});
    }
}