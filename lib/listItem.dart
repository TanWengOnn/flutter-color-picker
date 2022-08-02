import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final Color color;

  // this is the class constructor
  const ListItem({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      margin: EdgeInsets.only(bottom: 10),
    );
  }
}
