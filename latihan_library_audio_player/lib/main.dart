import 'package:flutter/material.dart';
import "package:audioplayers/audioplayers.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AudioPlayer? audioPlayer;
  String durasi = "00:00:00";
  _MyAppState() {
    audioPlayer = AudioPlayer();
    audioPlayer?.onPositionChanged.listen((event) {
      setState(() {
        durasi = durasi.toString();
      });
    });
    audioPlayer?.setReleaseMode(ReleaseMode.loop);
  }

  void playSound(url) async => await audioPlayer?.play(url);
  void stopSound() async => await audioPlayer?.stop();
  void pauseSound() async => await audioPlayer?.pause();
  void resumeSound() async => await audioPlayer?.resume();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Playing music"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  playSound(
                      "http://ia802609.us.archive.org/13/items/quraninindonesia/001AlFaatihah.mp3");
                },
                child: const Text("Play"),
              ),
              ElevatedButton(
                onPressed: () {
                  stopSound();
                },
                child: const Text("Stop"),
              ),
              ElevatedButton(
                onPressed: () {
                  pauseSound();
                },
                child: const Text("Pause"),
              ),
              ElevatedButton(
                onPressed: () {
                  resumeSound();
                },
                child: const Text("Resume"),
              ),
              Text(
                durasi,
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
