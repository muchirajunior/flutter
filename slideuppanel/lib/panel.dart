import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class Panel extends StatefulWidget {
  const Panel({ Key? key }) : super(key: key);

  @override
  State<Panel> createState() => _PanelState();
}

class _PanelState extends State<Panel> {

  final String text="parallaxOffset	Allows for specifying the extent of the parallax effect in terms of the percentage the panel has slid up/down. Recommended values are within 0.0 and 1.0 where 0.0 is no parallax and 1.0 mimics a one-to-one scrolling effect. Defaults to a 10% parallax.unding the Borders # ";
  final String  longText = "Modern design principles (especially in the Material Design Refresh) emphasize rounded borders. A similar effect can be easily achieved by providing a non-null BorderRadiusGeometry to the borderRadius property. Note that this only curves the border on the underlying panel sheet: any children passed to panel or collapsed must also have their borders curved separately in order to achieve a uniform effect. For example:";
 
  @override
  Widget build(BuildContext context) {
     final  screen =MediaQuery.of(context).size;
    return Scaffold(
      body: SlidingUpPanel(
        backdropEnabled: true,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(20),
        ),
        margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        backdropColor: Colors.transparent,
        header: Container(
          width: screen.width-20,
          height: 50,
          decoration: const BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(20)
            )
          ),
          child:const  Center(child: Text('the panel header'),),
        ),
        collapsed: Container(
          decoration: const BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(20)
            )
          ),
          child:const  Center(child: Text('the collapsed view'),),
        ),
        panel:ListView(
          padding: const EdgeInsets.all(10),
          children: [Text(longText+text, style: const TextStyle(fontSize: 30),)],),
        body: Scaffold(
          appBar: AppBar(
            title: const Text("SlidingUpPanelExample"),
          ),
          body: const Center(
            child: Text("This is the Widget behind the sliding panel"),
          ),
        ),
      ),
    );
  }
}