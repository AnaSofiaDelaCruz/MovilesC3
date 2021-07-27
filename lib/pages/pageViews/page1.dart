
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_lector_generator/pages/pageViews/page3.dart';

class Page1 extends StatefulWidget {
  @override
  _QrCodeState createState() => _QrCodeState();

  }


class _QrCodeState extends State<Page1> {
  String barcodeScanRes = "";

  //_scan() async{
    //return await FlutterBarcodeScanner.scanBarcode('#A03131', 'Cancelar', true, ScanMode.QR).then((value) => setState(()=> _data = value));
  //}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          FloatingActionButton( child: Icon(Icons.camera), onPressed: ()  async {
            barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
                '#A03131',
                'Cancelar',
                true,
                ScanMode.QR
              
            );
            Navigator.push(
          context, MaterialPageRoute(builder: (_) => Page3(barcodeScanRes)));
          }
          //_scan(),
        ),

      ],),);
  }
}
