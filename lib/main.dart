import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  static AudioCache player = AudioCache();

  void playAudio(int fileSuffix) {
    player.play('note$fileSuffix.wav');
  }

  Expanded buildKey({Color color, int fileSuffix}) {
    return new Expanded(
        child: TextButton(
      style:
          ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(color)),
      onPressed: () {
        playAudio(fileSuffix);
      },
      child: Text(''),
    ));
  }

  List<Expanded> buildAllKeys() {
    var colorList = [
      Colors.red,
      Colors.orange,
      Colors.yellow,
      Colors.green,
      Colors.teal,
      Colors.blue,
      Colors.purple
    ];

    List<Expanded> expandedWidgets = [];
    int counter = 0;
    for (Color color in colorList) {
      counter++;
      expandedWidgets.add(buildKey(color: color, fileSuffix: counter));
    }

    return expandedWidgets;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        backgroundColor: Colors.black,
        body: new SafeArea(
          child: new Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: buildAllKeys()),
        ),
      ),
    );
  }
}
