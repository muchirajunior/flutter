import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:statesdemo/mybloc.dart';
import 'package:statesdemo/page.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  GlobalKey key1=GlobalKey();
  GlobalKey key2=GlobalKey();
  GlobalKey key3=GlobalKey();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_)async{
      ShowCaseWidget.of(context)!.startShowCase( [key1, key2, key3] );
      await context.read<CountData>().addData();
    }
       
     );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:  Showcase(
            key: key1,
            description: "our home page title",
            child: const Text('HOME')),
            actions: <Widget>[
            BlocBuilder<CountData, Map>(builder: (context, data)=> 
              Showcase(
                key:key2,
                title: "important",
                description: "number of items",
                child: CircleAvatar( child: Text( data['number'].toString() )))) 
          ],
          ), 

          body:   BlocBuilder<CountData, Map>(builder: (context, data){
            if (data['data'].length>0){
             return  RefreshIndicator(
               onRefresh: context.read<CountData>().addData,
               child: ListView.builder(
                  physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                  itemCount: data['data'].length,
                  itemBuilder: (context,index)=>Card(
                    child: ListTile(
                      leading: Text((index+1).toString()),
                      title: const Text("radom Number"),
                      trailing: CircleAvatar(child: Text( data['data'][index].toString() ),),
                    ),
                  )
                  ),
             );}
                else{
                  return const Center(child: Text("No data !!!"),);
                 }
             },) , 

          floatingActionButton: FloatingActionButton(
            onPressed: ()=> 
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => SamplePage()  )),
            child:  Showcase(
              key: key3,
              description: "tap to move to next page",
              child:const  Icon(Icons.forward)),
          ),  


    );
  }
}