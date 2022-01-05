import 'package:flutter/material.dart';

class CustomSlider extends StatefulWidget {
 const CustomSlider({ Key? key}) : super(key: key);

  @override
  _CustomSliderState createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  double rating=10;  

  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        Flexible(
          flex: 5,
          child: Slider(
            value: rating,
            max: 100,
            min: 0,
            onChanged: (newValue)=>setState(() { rating=newValue; }),
            //divisions: 10,
            label: '$rating',
          ),
        ),
        Flexible(
          flex: 1,
          child: Text('${rating.ceil()}')
          )
      ],
    );
  }
}