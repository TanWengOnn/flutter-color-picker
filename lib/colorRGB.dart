import 'package:flutter/material.dart';
import 'package:flutter_navigation/homePage.dart';

class ColorRGB extends StatefulWidget {
  const ColorRGB({Key? key}) : super(key: key);

  @override
  State<ColorRGB> createState() => _ColorRGBState();
}

class _ColorRGBState extends State<ColorRGB> {
  double red = 0;
  double green = 0;
  double blue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RGB Picker"),
      ),
      body: Column(
        children: [
          Slider(
              min: 0,
              max: 255,
              value: red,
              onChanged: (value) {
                setState(() {
                  red = value;
                  //print(red);
                });
              }),
          Slider(
              min: 0,
              max: 255,
              value: green,
              onChanged: (value) {
                setState(() {
                  green = value;
                  //print(green);
                });
              }),
          Slider(
              min: 0,
              max: 255,
              value: blue,
              onChanged: (value) {
                setState(() {
                  blue = value;
                  //print(blue);
                });
              }),
          CircleAvatar(
            backgroundColor: Color.fromRGBO( red.toInt(), green.toInt(), blue.toInt(), 1),
            radius: 40,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      actions: [
                        Row(
                          children: [
                            Text("Selected Color: "),
                            Container(
                              color: Color.fromRGBO(red.toInt(), green.toInt(), blue.toInt(), 1),
                              width: 10,
                              height: 10,
                            ),
                          ],
                        )
                      ],
                    );
                  },
                );
              },
              child: Text("Select")
          ),
        ],
      ),
    );
  }
}
