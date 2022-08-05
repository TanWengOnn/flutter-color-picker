import 'package:flutter/material.dart';

class RgbSlider extends StatefulWidget {
  double color;
  Function function;

  RgbSlider(this.color, this.function);

  @override
  State<RgbSlider> createState() => RgbSliderState(color, function);

}

class RgbSliderState extends State<RgbSlider> {
  double color;
  Function function;

  RgbSliderState(this.color, this.function);
  @override
  Widget build(BuildContext context) {
    return Slider(
        min: 0,
        max: 255,
        value: color,
        onChanged: (value) {
          setState(() {
            function(value);
            color = value;
            //print(color);
          });
        });
  }
}