import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class QrScanner extends StatefulWidget {
  @override
  _QrScannerState createState() => _QrScannerState();
}

class _QrScannerState extends State<QrScanner> {
  
   var text="";

 Future<void> scanQR() async {
    String barcodeScanRes;
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.QR);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }

    if (!mounted) return;
    setState(() {text = barcodeScanRes; });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

     appBar: AppBar(
       title: Text("Flutter Qr scanner"),
      actions: [ IconButton(onPressed: (){ Navigator.pushReplacementNamed(context, "/gen"); }, icon: Icon(Icons.qr_code) ) ],),

       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,

           children: [
           RaisedButton(onPressed: (){ scanQR(); } , child: Text("scan Qr"), ),
           SizedBox(height:30),
           Text(text)
         ],) ,
       ),
      
    );
  }
}