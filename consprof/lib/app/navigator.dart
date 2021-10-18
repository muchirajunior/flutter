import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home.dart';

class Nav{
  Icon? icon;
  Widget? text;

  Nav(this.icon, this.text);
}

List<Nav> options=[
  Nav(Icon(Icons.person, color: Colors.white), Text("person", style: TextStyle(color: Colors.white),)),
  Nav(Icon(Icons.group, color: Colors.white), Text("group", style: TextStyle(color: Colors.white),)),
  Nav(Icon(Icons.phone, color: Colors.white), Text("phone", style: TextStyle(color: Colors.white),)),
  Nav(Icon(Icons.payment, color: Colors.white),Text("pay", style: TextStyle(color: Colors.white),))
];


navigationBar(){
  return  Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:options.map((option) => InkWell(
        onTap: ()=>print("tabbed"),
        child: Tab(
           icon: option.icon,
           child: option.text),
      ),
    ).toList());
}


class MySearchBar extends StatelessWidget implements PreferredSizeWidget {
  const MySearchBar({ Key? key} ) : super(key: key);


  @override
  Size get preferredSize => const Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      margin:EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white
      ),
      child: TextFormField(
        onChanged: (String x)=> print(x),
        decoration: InputDecoration(
          suffixIcon: Icon(Icons.search),
          hintText: "  name...",
          focusColor: Colors.amber,
          border: InputBorder.none
        ),
      ),
    );
  
  }
}
