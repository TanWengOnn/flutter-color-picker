import 'package:flutter/material.dart';
import 'package:flutter_navigation/colorRGB.dart';
import 'package:flutter_navigation/listItem.dart';
import 'package:flutter_navigation/shadesPage.dart';

class MyHomePage extends StatelessWidget {
  void navigateToShadePage(
      BuildContext context, MaterialAccentColor color) {
    Navigator.pushNamed(context, '/shades', arguments: color);
  }

  void navigateToRgbPage(BuildContext context) {
    Navigator.pushNamed(context, '/color-rgb');
  }

  // void navigateToShadePage(
  //     BuildContext context, MaterialAccentColor color, int index) {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (BuildContext context) {
  //         return ShadesPage(
  //           color: color,
  //         );
  //       },
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Color"),
      ),
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: Colors.accents.length,
        itemBuilder: (BuildContext context, index) {
          return GestureDetector(
              onTap: () {
                navigateToShadePage(
                    context, Colors.accents.elementAt(index));
              },
              child: ListItem(color: Colors.accents.elementAt(index)));
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          navigateToRgbPage(context);
          // Navigator.push(context,
          //     MaterialPageRoute(builder: (BuildContext context) {
          //   return ColorRGB();
          // }));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
