import 'package:audioplayers/src/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Piano());
}

class Piano extends StatelessWidget {
  const Piano({Key? key}) : super(key: key);

  Expanded buttonKey(int number, Color color) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(number);
        },
        child: Text(
          "DF${number + 1}",
          style: TextStyle(
              color: Colors.white,
              fontFamily: "Times new roman",
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  void playSound(int number) {
    final audio = AudioCache();
    audio.play('note$number.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buttonKey(1, Colors.red),
            buttonKey(2, Colors.yellowAccent),
            buttonKey(3, Colors.blue),
            buttonKey(4, Colors.green),
            buttonKey(5, Colors.teal),
            buttonKey(6, Colors.orange),
            buttonKey(7, Colors.pink),
          ],
        ),
      )),
    );
  }
}
