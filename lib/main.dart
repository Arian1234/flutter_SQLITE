import 'package:flutter/material.dart';
import 'package:flutter_sqlite/pages/home_page.dart';
import 'package:flutter_sqlite/pages/mapa_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: 'Home',
      routes: {
        'Home': (BuildContext context) => const Homepage(),
        'Mapa': (BuildContext context) => const Mapapage(),
      },
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter SQLITE'),
        ),
        body: Center(
          child: Container(
            child: const Text('Hello World'),
          ),
        ),
      ),
    );
  }
}
