import 'package:flutter/material.dart';
import 'package:flutter_sqlite/provider/bottomnavigator_provider.dart';
import 'package:provider/provider.dart';

class bottomnavigatorbarwidgetCustom extends StatelessWidget {
  const bottomnavigatorbarwidgetCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ui = Provider.of<UIProvider>(context);
    int currentnavigator = ui.selectedmenuoptions;
    return BottomNavigationBar(
        onTap: (int u) => ui.selectedmenuoptions=u,
        elevation: 0,
        currentIndex: currentnavigator,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.map_outlined), label: 'Mapas'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_road_outlined), label: 'Direcciones'),
        ]);
  }
}
