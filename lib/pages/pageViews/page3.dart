

import 'package:flutter/material.dart';
import 'package:qr_code_lector_generator/pages/pageViews/page2.dart';
import 'package:url_launcher/url_launcher.dart';




class Page3 extends StatefulWidget {
  var Facebook;
  var Instagram;
  var Telefono; 

  @override
  _Boton createState() => _Boton(Facebook,Instagram,Telefono);

  Page3(String data){
    var info = data.split("\n");

    Facebook = info[0];
    Instagram = info[1];
    Telefono = info[2];

  }
  
}

class _Boton extends State<Page3> {
  var linkFacebook;
  var linkInstagram;
  var Tel;

  _Boton(facebook, instagram, telefono){
    linkFacebook = facebook;
    linkInstagram = instagram;
    Tel = "https://api.whatsapp.com/send?phone=+52" + telefono;
  }

  @override
  Widget build(BuildContext context) {
     final ButtonStyle style =
         ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
         ElevatedButton(
            style: style,
            onPressed: (){
              _launchURL(linkFacebook);
            },
            child: const Text('Facebook'),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            style: style,
            onPressed: (){
              _launchURL(linkInstagram);
            },
            child: const Text('Instagram'),
          ),const SizedBox(height: 30),
          ElevatedButton(
            style: style,
            onPressed: (){
              _launchURL(Tel);
            },
            child: const Text('Telefono'),
          ),
        ],
      ),
    );
  }
  _launchURL(aux) async {
      var url = '$aux';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }
   

}





