import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DrumPage(),
    );
  }
}

class DrumPage extends StatefulWidget {
  const DrumPage({super.key});

  @override
  State<DrumPage> createState() => _DrumPageState();
}

class _DrumPageState extends State<DrumPage> {
  final oynatici = AudioPlayer();

  var ss = "";

  void sesCal(ss) {
    setState(() {
      var ses = AssetSource('$ss.wav');
      oynatici.play(ses);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      ss = "bip";
                      sesCal(ss);
                    },
                    child: Container(
                      color: Colors.blue,
                    ),
                    style: ButtonStyle(),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      ss = "bongo";
                      sesCal(ss);
                    },
                    child: Container(
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      ss = "clap1";
                      sesCal(ss);
                    },
                    child: Container(
                      color: Colors.green,
                    ),
                    style: ButtonStyle(),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      ss = "clap2";
                      sesCal(ss);
                    },
                    child: Container(
                      color: Colors.yellow,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      ss = "clap3";
                      sesCal(ss);
                    },
                    child: Container(
                      color: Colors.purple,
                    ),
                    style: ButtonStyle(),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      ss = "crash";
                      sesCal(ss);
                    },
                    child: Container(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      ss = "how";
                      sesCal(ss);
                    },
                    child: Container(
                      color: Colors.orange,
                    ),
                    style: ButtonStyle(),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      ss = "oobah";
                      sesCal(ss);
                    },
                    child: Container(
                      color: Colors.brown,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
