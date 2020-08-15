import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  Expanded tabs({Color color, int soundNumber}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          final player = AudioCache();
          player.play('note$soundNumber.wav');
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Center(
            child: Text(
              'Xylophone',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              tabs(color: Colors.red,soundNumber: 1),
              tabs(color: Colors.orange,soundNumber: 2),
              tabs(color: Colors.yellow,soundNumber: 3),
              tabs(color: Colors.green,soundNumber: 4),
              tabs(color: Colors.teal,soundNumber: 5),
              tabs(color: Colors.purple,soundNumber: 6),
              tabs(color: Colors.blue,soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
