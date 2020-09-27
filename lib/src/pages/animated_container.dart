import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _width = 50;
  double _heigth = 50;
  Color _color = Colors.lightGreen;

  BorderRadiusGeometry _borderRaius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contenido animado'),
      ),
      body: Center(
          child: AnimatedContainer(
        duration: Duration(seconds: 1),
        curve: Curves.bounceInOut,
        width: _width,
        height: _heigth,
        decoration: BoxDecoration(
          borderRadius: _borderRaius,
          color: _color,
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: _cambiarForma,
        child: Icon(Icons.play_circle_filled),
      ),
    );
  }

  void _cambiarForma() {
    final random = Random();
    setState(() {
      _width = random.nextInt(300).toDouble();
      _heigth = random.nextInt(300).toDouble();
      _color = Color.fromRGBO(
          random.nextInt(255), random.nextInt(255), random.nextInt(255), 10);
      _borderRaius = BorderRadius.circular(random.nextInt(100).toDouble());
    });
  }
}
