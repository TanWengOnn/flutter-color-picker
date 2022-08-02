import 'package:flutter/material.dart';
import 'package:flutter_navigation/colorRGB.dart';
import 'package:flutter_navigation/shadesPage.dart';
import 'package:flutter_navigation/shadesWithParams.dart';
import 'homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      // routes: {'/shades': (context) => StateWithParams()},
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (_) => MyHomePage());
          case '/shades':
            final data = settings.arguments as MaterialAccentColor;
            return MaterialPageRoute(builder: (_) => ShadesPage(color: data));
          case '/color-rgb':
            return MaterialPageRoute(builder: (_) => ColorRGB());
        }
      },
    );
  }
}
