import 'package:flutter/material.dart';
import 'package:flutter_sqlite/pages/body_pages/direccioneshistorial_page.dart';
import 'package:flutter_sqlite/pages/mapashistorial_page.dart';
import 'package:flutter_sqlite/provider/bottomnavigator_provider.dart';
import 'package:flutter_sqlite/widgets/botttomnavigatorbar_widget.dart';
import 'package:flutter_sqlite/widgets/floatingactionbuttonscan_widget.dart';
import 'package:provider/provider.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Historial')),
        elevation: 0,
        actions: [
          IconButton(onPressed: () => null, icon: Icon(Icons.history_sharp))
        ],
      ),
      body: const Center(
        child: bodystate(),
      ),
      bottomNavigationBar: const bottomnavigatorbarwidgetCustom(),
      floatingActionButton: floatingactionbuttonscanCustom(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class bodystate extends StatelessWidget {
  const bodystate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ui = Provider.of<UIProvider>(context);
    int currentindex = ui.selectedmenuoptions;
    switch (currentindex) {
      case 0:
        return const mapashistorial();
      case 1:
        return const direccioneshistorial();
      default:
        return const mapashistorial();
    }
  }
}
