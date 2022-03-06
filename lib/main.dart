import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Xylophone(),
      backgroundColor: Colors.black,
    ),
  ));
}

class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey(Color theColor, int theSound) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: theColor,
        ),
        onPressed: () {
          playSound(theSound);
        },
        child: Text(""),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildKey(Colors.red, 1),
          buildKey(Colors.yellow, 2),
          buildKey(Colors.teal, 3),
          buildKey(Colors.purple, 4),
          buildKey(Colors.green, 5),
          buildKey(Colors.orange, 6),
          buildKey(Colors.blue, 7),
        ],
      ),
    );
  }
}
