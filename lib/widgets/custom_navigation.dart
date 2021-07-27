import 'package:flutter/material.dart';
import 'package:qr_code_lector_generator/providers/ui_provider.dart';
import 'package:provider/provider.dart';


class CustomNavigations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final iuProvider = Provider.of<UiProvider>(context);
    final indexPosition = iuProvider.menuSelect;

    return BottomNavigationBar(
        onTap: (int i) => iuProvider.menuSelect = i,
        currentIndex: indexPosition,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.qr_code_scanner_rounded), label: 'Leer Qr'),
          BottomNavigationBarItem(
              icon: Icon(Icons.qr_code), label: 'Generar Qr')
        ]);
  }
}