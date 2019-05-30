import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

playSound(int soundNumber) {
  final player = AudioCache();
  player.play('note$soundNumber.wav');
}

Widget buildKey(int key, Color color) {
  return Expanded(
    child: FlatButton(
      color: color,
      onPressed: () {
        playSound(key);
      },
      child: Text('click me'),
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(1, Colors.red),
              buildKey(2, Colors.deepOrange),
              buildKey(3, Colors.yellow),
              buildKey(4, Colors.green),
              buildKey(5, Colors.greenAccent),
              buildKey(6, Colors.blueAccent),
              buildKey(7, Colors.purpleAccent),
            ],
          ),
        ),
      ),
    );
  }
}
