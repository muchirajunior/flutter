import 'package:blocflutter/mybloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: use_key_in_widget_constructors
class Home extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("flutter bloc"),
        actions: [
          CircleAvatar(
            child: BlocBuilder<CounterCubit, Map>(builder: (context, counter)=>Text(counter['items'].length.toString()),),
          ),
        ],
      ),

    
    body:  Center(
      child: BlocBuilder<CounterCubit, Map>(builder: (context, count)=>Text(count['count'].toString()),) ,
    ),



      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children : <Widget>[
          FloatingActionButton(onPressed: ()=>context.read<CounterCubit>().increment(),
          child: const Icon(Icons.add),),
           FloatingActionButton(onPressed: ()=>context.read<CounterCubit>().decrement(),
          child: const Icon(Icons.remove),),
        ]
      ),
      
    );
  }
}