import 'actions.dart';

reducer(var state,dynamic action){
  if (action==Actions.Increment)
      increment(state);
  else if (action==Actions.Decrement)
      decrement(state);
}