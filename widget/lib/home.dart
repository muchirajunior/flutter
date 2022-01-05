import 'package:flutter/material.dart';
import 'package:widget/components/components.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(title: const Text("custom Widgets"),),

      body: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              onTap: ()=>Navigator.pushNamed(context, '/wheel'),
              title:const Text("list wheel"),
            ),
          ),

           Card(
            child: ListTile(
              onTap: ()=> showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    )
                  ),
                  builder: ((context)=> const  BottomSheetSample() )) ,
              title:const Text("bottom dialog"),
            ),
          )
        ],
      ),

    );
  }
}