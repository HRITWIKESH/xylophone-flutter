import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int noteno) {
    final player = AudioCache();
    player.play('note$noteno.wav');
  }

  Expanded bkey({required Color color, required int noteno}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: () {
          playsound(noteno);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              bkey(color: Colors.red, noteno: 1),
              bkey(color: Colors.orange, noteno: 2),
              bkey(color: Colors.yellow, noteno: 3),
              bkey(color: Colors.teal, noteno: 4),
              bkey(color: Colors.green, noteno: 5),
              bkey(color: Colors.blue, noteno: 6),
              bkey(color: Colors.purple, noteno: 7),
            ],
          ),
        ),
      ),
    );
  }
}
