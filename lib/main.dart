import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(MusicApp());

class MusicApp extends StatelessWidget {
  MusicApp({super.key});

  final audioPlayer = AssetsAudioPlayer();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Center(
                child: TextButton(
                  child: const Text('Note 1'),
                  onPressed: () {
                    audioPlayer.open(Audio('assets/note1.wav'));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
