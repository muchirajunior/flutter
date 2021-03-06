import 'package:bloc/bloc.dart';

enum Events {increment, decrement}



class CounterCubit extends Cubit<Map<String,dynamic>> {
  CounterCubit() : super({"count":0,"items":[]});

  void increment() { 
     add(state); //using an external method 
     emit({...state});
    }

  void decrement() {
    state['count']-=1;
    if (state['items'].length>0) state['items'].removeLast();
    print(state);
     emit({...state});}
}

//an external method to manipulate the state, this helps in writting a cleaner code
add(var state){
  state['count']+=1;
  state['items'].add(state['count']);
  print(state);
}