import 'dart:html';
import 'dart:math';

import 'package:flutter/material.dart';

class background extends StatelessWidget {
  background({Key? key}) : super(key: key);

  final boxdecoration = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xFF6E07FF),
        Color(0xFFC536F4)
      ],
      )
  );




  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: boxdecoration,
      ),
      const Positioned(
          top: 100,
          left: -30,
          child: _PinkBox()
        )
      ]
      );
  }
}

class _PinkBox extends StatefulWidget{
  const _PinkBox({Key? key}):super(key: key);

  @override
  State<_PinkBox> createState() => _PinkBoxState();
}

class _PinkBoxState extends State<_PinkBox> {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi/5,
      child: Container(
        width: 360,
        height: 360,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          gradient: const LinearGradient(
            colors: [
              Color.fromARGB(255, 0, 68, 216),
              Color.fromARGB(255, 189, 0, 16)
            ]
          )
        ),
      ),
    );
  }
}