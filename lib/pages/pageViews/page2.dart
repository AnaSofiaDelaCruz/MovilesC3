import 'package:flutter/cupertino.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';




class Page2 extends StatefulWidget {
  @override
  _QrCodeGenerate createState()  =>_QrCodeGenerate();

  split(String s) {}
}

class _QrCodeGenerate extends State<Page2> {
  TextEditingController _editingControllerFb = TextEditingController(text: '');
  TextEditingController _editingControllerIg = TextEditingController(text: '');
  TextEditingController _editingControllerPn = TextEditingController(text: '');
  String data = "";

  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
        child: Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,

          children:  [
            TextFormField(
              controller: _editingControllerFb,
              decoration: const InputDecoration(
                  labelText: "URL de Facebook",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.facebook)
              ),
            ),
            TextFormField(
              controller: _editingControllerIg,
              decoration: const InputDecoration(
                  labelText: "URL de Instagram",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.phone_android)
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: _editingControllerPn,
              decoration: const InputDecoration(
                  labelText: "Numero de Telefono",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.phone)
              ),
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  data = _editingControllerFb.text + "\n" + _editingControllerIg.text + "\n" + _editingControllerPn.text;
                });
              },
              child: Text('Generar Qr'),
            ),
            Center(
              child: QrImage(
                data: "$data",
                version: QrVersions.auto,
                size: 200.0,
                backgroundColor: Colors.white,
              ),
            ),
            
            
          ],
        ),
      ),
    ));
  }

  
 
}
