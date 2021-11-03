import 'actions.dart';

reducer(state, action){
  if (action==Actions.Increment)
      increment(state);
  else if (action==Actions.Decrement)
      decrement(state);
}