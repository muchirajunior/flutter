import 'package:consprof/app/cartegory.dart';
import 'package:consprof/app/navigator.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> items=[
     cartegoryCard("john muchira",  Colors.amber),
     cartegoryCard("muchira junior", Colors.indigo),
     cartegoryCard("mark junior", Colors.grey[700] as Color),
     cartegoryCard("james hendrix", Colors.green.shade900),
     cartegoryCard("Alex Mahong", Colors.orange)

  ];

  final controller= TextEditingController();

  List names=['john', 'junior', 'mary', 'mercy', 'ken', 'james','henery','matic','alex'];

  filter(String x){
    List newNames=names.where((name) => name.contains(x)).toList();
    setState(() {
      names=newNames;
    });

    return names;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text("Consumer page"),
            pinned:true,
            expandedHeight: 300,
            centerTitle: true,
            stretch: true,
            leading: Icon(Icons.menu, color: Colors.grey[300]),
            
            flexibleSpace: FlexibleSpaceBar(background: Container(
              
              child: Column(
                children: [
                  SizedBox(height: 50,),
                  Text("This the custom user consumption page, \n The user name is MUCHIRA JUNIOR \n",  style: TextStyle(color: Colors.grey[200], fontSize: 18), ),
                  navigationBar()
                ],
              ),
            ),), //this creates the background of the app bar
            actions: [
              Center(child: Text("Muchira  ", style: TextStyle(color: Colors.grey[300], fontSize: 18),)),
              CircleAvatar(child: Icon(Icons.person_outline_outlined, color: Colors.white,), )
            ],
            bottom: MySearchBar(),
          ),
          
          SliverToBoxAdapter(
            child: Container(
              height: 240,
              width: MediaQuery.of(context).size.width*0.8,
              child: ListView(
                padding: EdgeInsets.all(10),
                scrollDirection: Axis.horizontal,
                children: items.map((card) =>card ).toList(),
              ),
            ),
          ),

           SliverToBoxAdapter(
             child: Text("Recent Transactions",  style: TextStyle(color: Colors.grey[600], fontSize: 22, fontWeight: FontWeight.bold), ),
           ),
    
          SliverList(
            delegate: SliverChildBuilderDelegate((context,index)=>Card(
              child: ListTile(
                title: Text(names[index]),
              ),
            ),  childCount: names.length)
             )

        ],
      )
    );
  }
}