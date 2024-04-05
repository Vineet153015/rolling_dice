import 'package:flutter/material.dart';

import 'package:rolling_dice/Gradient_container.dart';

void main() {
  runApp( const MaterialApp(
    home: Scaffold(
      body: GradientContainer(
        Color.fromARGB(234, 162, 0, 255),
        Color.fromARGB(122, 255, 0, 115)
        ),
    ),
  ),
  );
}





