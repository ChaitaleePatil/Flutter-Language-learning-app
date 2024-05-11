import 'package:flutter/material.dart';

class SLettersPage extends StatelessWidget {
  const SLettersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Letters'),
      ),
      body: GridView.builder(
        // ignore: prefer_const_constructors
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5, // Change this to adjust the number of columns
        ),
        itemCount: 26,
        itemBuilder: (context, index) {
          String letter = String.fromCharCode(index + 65); // A is ASCII 65
          return LetterButton(letter: letter);
        },
      ),
    );
  }
}

class LetterButton extends StatelessWidget {
  final String letter;

  const LetterButton({super.key, required this.letter});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          // Handle button press
        },
        child: Text(letter),
      ),
    );
  }
}
