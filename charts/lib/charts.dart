import 'package:charts/model.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Charts extends StatefulWidget {
  const Charts({ Key? key }) : super(key: key);

  @override
  _ChartsState createState() => _ChartsState();
}

class _ChartsState extends State<Charts> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[900],
      appBar: AppBar(title: Text("charts"), backgroundColor:Colors.deepPurple[900]),

      body: ListView(
        padding: EdgeInsets.all(5),
        children: [
          Card(
            elevation: 10,
            child: SfCartesianChart(
              title: ChartTitle(text: "car sales numbers"),
                // backgroundColor: Colors.deepPurple[900],
                primaryXAxis: CategoryAxis(  title: AxisTitle(text: "car name") ),
                primaryYAxis: NumericAxis(title: AxisTitle(text: "availabe ")),
                series: <ChartSeries>[
                  ColumnSeries<CarSale, String>(
                    dataSource: CarSale.salesData(), 
                    xValueMapper: (CarSale sale,_)=> sale.name,
                     yValueMapper: (CarSale sale,_)=> sale.number,
                     dataLabelSettings: DataLabelSettings(isVisible: true)
                  ),
                ],
            )
            ),


        ],
      ),

    );
  }
}