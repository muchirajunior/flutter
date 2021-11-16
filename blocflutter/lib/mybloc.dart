import 'package:bloc/bloc.dart';

enum Events {Increment, Decrement}

class CounterBloc extends Bloc<Events, int>{
  
  @override
  Map get initState => {};

  CounterBloc() : super(0);

  @override
  Stream<int>  mapEventToState(Events event) async*{

    switch (event) {
      case  Events.Increment:
          yield state+1;
          break;

      case Events.Decrement:
          yield state-1;
          break;
          
      default:
         yield state;
    }
  }
   
}