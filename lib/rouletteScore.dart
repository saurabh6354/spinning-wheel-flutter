import 'package:flutter/material.dart';

class RouletteScore extends StatelessWidget {
  final dynamic selected;

  final Map<dynamic, String> labels = {
    1: '1500\♞',
    2: '2000\♞',
    3: '100\♞',
    4: '300\♞',
    5: '500\♞',
    6: '700\♞',
    7: '900\♞',
    8: '1200\♞',
  };


  RouletteScore(this.selected);

  @override
  Widget build(BuildContext context) {
    return Text('${labels[selected]} ',
        style: TextStyle(fontStyle: FontStyle.italic, fontSize: 28.0));
  }
}