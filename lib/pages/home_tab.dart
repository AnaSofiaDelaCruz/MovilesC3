import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_code_lector_generator/pages/pageViews/page1.dart';
import 'package:qr_code_lector_generator/pages/pageViews/page2.dart';
import 'package:qr_code_lector_generator/pages/pageViews/page3.dart';
import 'package:qr_code_lector_generator/providers/ui_provider.dart';
import 'package:qr_code_lector_generator/widgets/custom_navigation.dart';




class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IDS QR'),
        actions: [],
      ),
      body: HomeTabContainer(),
      bottomNavigationBar: CustomNavigations(),
    );
  }
}

class HomeTabContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final iuProvider = Provider.of<UiProvider>(context);
    final indexPosition = iuProvider.menuSelect;

    switch (indexPosition) {
      case 0:
        return Page1();
      case 1:
        return Page2();
      // case 2:
      //   return Page3();
      default:
        return Page1();
    }

    // return Center(
    //   child: Text('Hola mundo'),
    // );
  }
}