import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class FLettersPage extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  FLettersPage({Key? key});

  final AudioPlayer _audioPlayer = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alphabets'),
      ),
      body: ListView.builder(
        itemCount: 26,
        itemBuilder: (BuildContext context, int index) {
          final number = index + 2; // Adjusting index to start from 2
          final letter = String.fromCharCode(number + 95); // ASCII code for 'a' is 97
          return ElevatedButton(
            onPressed: () {
              _playAudio(number);
            },
            // ignore: unnecessary_string_interpolations
            child: Text('$letter'),
          );
        },
      ),
    );
  }

  Future<void> _playAudio(int number) async {
    final asset = '$number'; // Assuming audio file names are '02.mp3', '03.mp3', ..., '27.mp3'
    await _audioPlayer.setAsset('audio/$asset.mp3');
    _audioPlayer.play();
  }
}
