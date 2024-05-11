import 'package:flutter/material.dart';
import 'fbasic.dart';

import 'fletters.dart';
import 'fphrases.dart'; // Import the new file

class FrenchHomePage extends StatelessWidget {
  const FrenchHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('French Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FBasicPage()),
                );
              },
              child: const Text('Numbers (French)'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  FLettersPage()),
                );
              },
              child: const Text('Letters (French)'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FPhrasesPage()),
                );
              },
              child: const Text('Phrases (French)'),
            ),
          ],
        ),
      ),
    );
  }
}