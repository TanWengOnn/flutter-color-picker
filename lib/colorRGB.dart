import 'package:flutter/material.dart';
import 'package:flutter_navigation/rgbSlider.dart';


class ColorRGB extends StatefulWidget {
  const ColorRGB({Key? key}) : super(key: key);

  @override
  State<ColorRGB> createState() => _ColorRGBState();
}

class _ColorRGBState extends State<ColorRGB> {
  double red = 0;
  double green = 0;
  double blue = 0;

  // void onPanStart(DragStartDetails details) {
  //   print('User started drawing');
  //   final box = context.findRenderObject() as RenderBox;
  //   final point = box.globalToLocal(details.globalPosition);
  //   print(point);
  // }
  //
  // void onPanUpdate(DragUpdateDetails details) {
  //   final box = context.findRenderObject() as RenderBox;
  //   final point = box.globalToLocal(details.globalPosition);
  //   print(point);
  // }
  //
  // void onPanEnd(DragEndDetails details) {
  //   print('User ended drawing');
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RGB Picker"),
      ),
      body: Column(
        children: [
          RgbSlider(red, (value) {
                setState(() {
                  red = value;
                });
              }
          ),
          RgbSlider(
              green, (value) {
                setState(() {
                  green = value;
                });
              }
          ),
          RgbSlider(
              blue, (value) {
                setState(() {
                  blue = value;
                });
              }
          ),
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
          // Container(
          //   width: 100,
          //   height: 100,
          //   color: Colors.yellow[100],
          //   child: CustomPaint(
          //     painter: myPainter(),
          //     //size: Size.square(20),
          //   ),
          // ),
          // GestureDetector(
          //   onPanStart: onPanStart,
          //   onPanUpdate: onPanUpdate,
          //   onPanEnd: onPanEnd,
          //   child: RepaintBoundary(
          //     child: Container(
          //       color: Colors.transparent,
          //       width: MediaQuery.of(context).size.width,
          //       height: MediaQuery.of(context).size.height,
          //       // CustomPaint widget will go here
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}

class myPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    //var paint = Paint()..color = Colors.blue;
    // Paint paint = Paint()..color = Colors.black
    //   ..style = PaintingStyle.stroke
    //   ..strokeWidth = 5;
    // //canvas.drawPath(Path(), paint);
    // canvas.drawRect(Rect.fromCenter(center: Offset(0, 175), width: 275, height: 250),paint);

    // 1
    Offset startPoint = Offset(0, 0);
    // 2
    Offset endPoint = Offset(size.width, size.height);
    // 3
    Paint paint = Paint();
    // 4
    canvas.drawLine(startPoint, endPoint, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {

    return true;
  }
}
