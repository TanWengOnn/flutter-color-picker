import 'package:flutter/material.dart';
import 'shadesPage.dart';

class StateWithParams extends StatelessWidget {
  const StateWithParams({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data =
        ModalRoute.of(context)!.settings.arguments as MaterialAccentColor;

    return ShadesPage(color: data);
  }
}
