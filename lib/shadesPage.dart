import 'package:flutter/material.dart';
import 'package:flutter_navigation/listItem.dart';

class ShadesPage extends StatelessWidget {
  final MaterialAccentColor color;

  late final List<Color> accentShades;

  ShadesPage({required this.color});

  @override
  Widget build(BuildContext context) {
    accentShades = [
      color.shade100,
      color.shade200,
      color.shade400,
      color.shade700
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Shades"),
        backgroundColor: color,
      ),
      body: ListView.builder(
          itemCount: accentShades.length,
          itemBuilder: (BuildContext context, index) {
            return ListItem(color: accentShades[index]);
          }),
    );
  }
}
