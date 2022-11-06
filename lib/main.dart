import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  static AudioCache player = AudioCache();

  void playAudio(int fileSuffix) {
    player.play('note$fileSuffix.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            new Expanded(
                child: TextButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.red)),
              onPressed: () {
                playAudio(1);
              },
              child: Text(''),
            )),
            new Expanded(
                child: TextButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.orange)),
              onPressed: () {
                playAudio(2);
              },
              child: Text(''),
            )),
            new Expanded(
              child: TextButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.yellow)),
                onPressed: () {
                  playAudio(3);
                },
                child: Text(''),
              ),
            ),
            new Expanded(
              child: TextButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.green)),
                onPressed: () {
                  playAudio(4);
                },
                child: Text(''),
              ),
            ),
            new Expanded(
                child: TextButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.teal)),
              onPressed: () {
                playAudio(5);
              },
              child: Text(''),
            )),
            new Expanded(
                child: TextButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue)),
              onPressed: () {
                playAudio(6);
              },
              child: Text(''),
            )),
            new Expanded(
              child: TextButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.purple)),
                onPressed: () {
                  playAudio(7);
                },
                child: Text(''),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
