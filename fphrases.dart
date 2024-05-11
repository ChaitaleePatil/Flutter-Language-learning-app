import 'package:flutter/material.dart';
import 'fgreetings.dart';
import 'fpolite_expression.dart';
import 'fpraise.dart';
import 'finstructions.dart'; // Import the new files

class FPhrasesPage extends StatelessWidget {
  const FPhrasesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('French Phrases Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FGreetingsPage()),
                );
              },
              child: const Text('Greeting'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FPoliteExpressionPage()),
                );
              },
              child: const Text('Polite Expression'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FPraisePage()),
                );
              },
              child: const Text('Praise'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FInstructionsPage()),
                );
              },
              child: const Text('Instructions'),
            ),
          ],
        ),
      ),
    );
  }
}