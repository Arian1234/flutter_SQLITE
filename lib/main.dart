import 'package:flutter/material.dart';
import 'package:flutter_sqlite/pages/home_page.dart';
import 'package:flutter_sqlite/pages/body_pages/mapa_page.dart';
import 'package:flutter_sqlite/provider/bottomnavigator_provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var themeData = ThemeData(
        primaryColor: Colors.deepOrange,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.deepOrange),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: Colors.deepOrange));

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UIProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
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
          body: const Center(),
        ),
        theme: themeData,
      ),
    );
  }
}
