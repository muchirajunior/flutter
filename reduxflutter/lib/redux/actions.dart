enum MyActions{
  Increment,
  Decrement
}


increment(var state){
  print(state);
    return state+1;
}

decrement(var state){
  print('state : $state');
  return state-1;
}

