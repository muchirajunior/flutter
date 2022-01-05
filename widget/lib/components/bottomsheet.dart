import 'package:flutter/material.dart';
import 'components.dart';

class BottomSheetSample extends StatelessWidget {
  const BottomSheetSample({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     height: MediaQuery.of(context).size.height*.8,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        )
     
      ),
      child: const  Center(
        child: CustomSlider()
      ),

    );
  }
}