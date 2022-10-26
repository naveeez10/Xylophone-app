import 'package:audioplayers/audioplayers.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/src/audio_cache.dart';

void main() {
  runApp(MyApp());
}

void playsound(int n) {
  AudioPlayer player = AudioPlayer();
  String path = 'note$n.wav';
  AssetSource source = AssetSource(path);
  player.play(
    source,
    volume: 200,
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[
                Center(
                  child: TextButton(
                    onPressed: () {
                      playsound(1);
                    },
                    child: Container(
                      color: Colors.red,
                      width: 350,
                      height: 70,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    playsound(2);
                  },
                  child: Container(
                    color: Colors.orange,
                    width: 350,
                    height: 70,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    playsound(3);
                  },
                  child: Container(
                    color: Colors.yellow,
                    width: 350,
                    height: 70,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    playsound(4);
                  },
                  child: Container(
                    color: Colors.green,
                    width: 350,
                    height: 70,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    playsound(5);
                  },
                  child: Container(
                    color: Colors.teal,
                    width: 350,
                    height: 70,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    playsound(6);
                  },
                  child: Container(
                    color: Colors.blue,
                    width: 350,
                    height: 70,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    playsound(7);
                  },
                  child: Container(
                    color: Colors.purple,
                    width: 350,
                    height: 70,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
