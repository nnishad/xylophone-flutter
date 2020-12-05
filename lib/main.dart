import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int counter) {
    final player = AudioCache();
    player.play('note$counter.wav');
  }

  Expanded buildKey(MaterialColor color, noteNumber) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(noteNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(Colors.red, 1),
              buildKey(Colors.yellow, 2),
              buildKey(Colors.purple, 3),
              buildKey(Colors.lightGreen, 4),
              buildKey(Colors.lightBlue, 7),
              buildKey(Colors.deepOrange, 5),
              buildKey(Colors.blueGrey, 6),
            ],
          ),
        ),
      ),
    );
  }
}
