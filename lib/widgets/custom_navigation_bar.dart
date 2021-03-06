import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qrapp/providers/ui_provider.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);

    final currentIndex = uiProvider.selectedMenuOpt;
    return BottomNavigationBar(
      currentIndex: currentIndex,
      elevation: 0,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.map), label: "Mapa"),
        BottomNavigationBarItem(
            icon: Icon(Icons.compass_calibration), label: "Historial")
      ],
      onTap: (int index) {
        uiProvider.selectedMenuOpt = index;
      },
    );
  }
}
