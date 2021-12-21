import 'dart:math';

generateData(Map state)async{
  await Future.delayed(const Duration(seconds: 3));
  for (var i = 0; i < 20; i++) {
    state['data'].add(Random().nextInt(400));
  }
  state['number']+=20;
}