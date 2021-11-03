import 'package:reduxflutter/redux/actions.dart';

reducer(var state,dynamic action){
  if (action==MyActions.Increment)
     return increment(state);
  else if (action==MyActions.Decrement)
   return decrement(state);

  else
    return state;
}