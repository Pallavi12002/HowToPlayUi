import 'package:flutter/material.dart';
import 'how_to_play.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      home: HowToPlayPage(),
    );
  }
}
