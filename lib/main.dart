import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Xylophone());
}

class Xylophone extends StatefulWidget {
  const Xylophone({Key? key}) : super(key: key);

  @override
  _XylophoneState createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: XylophoneCore(),
        ),
      ),
    );
  }
}

class XylophoneCore extends StatefulWidget {
  const XylophoneCore({Key? key}) : super(key: key);

  @override
  _XylophoneCoreState createState() => _XylophoneCoreState();
}

class _XylophoneCoreState extends State<XylophoneCore> {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded createWidget({required int sound, required Color colorUsed}) {
    return Expanded(
      child: ElevatedButton(
        child: Container(),
        style: ElevatedButton.styleFrom(primary: colorUsed),
        onPressed: () {
          playSound(sound);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        createWidget(sound: 1, colorUsed: Colors.red),
        createWidget(sound: 2, colorUsed: Colors.orange),
        createWidget(sound: 3, colorUsed: Colors.yellow),
        createWidget(sound: 4, colorUsed: Colors.green),
        createWidget(sound: 5, colorUsed: Colors.blueGrey),
        createWidget(sound: 6, colorUsed: Colors.blue),
        createWidget(sound: 7, colorUsed: Colors.purple),
      ],
    );
  }
}
