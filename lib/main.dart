import 'package:HockeySim/models/player/player.dart';
import 'package:flutter/material.dart';

void main() {
  Player testPlayer = Player();
  testPlayer.calculateOverall();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Container(
        child: Center(
          child: Text('text'),
        ),
      ),
    );
  }
}
