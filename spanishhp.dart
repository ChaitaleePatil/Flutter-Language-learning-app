import 'package:flutter/material.dart';
import 'sbasic.dart'; // Assuming this is where you have the Spanish numbers page

class SpanishHomePage extends StatelessWidget {
  const SpanishHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Spanish Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SBasicPage()),
                );
              },
              child: const Text('Numbers (Spanish)'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add navigation to Spanish Letters page
              },
              child: const Text('Letters (Spanish)'),
            ),
          ],
        ),
      ),
    );
  }
}
