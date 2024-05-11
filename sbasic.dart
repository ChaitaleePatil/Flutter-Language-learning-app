import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class SBasicPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Numbers'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Display numbers from 1 to 10
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(10, (index) {
              int number = index + 1;
              return NumberButton(number: number);
            }),
          ),
          const SizedBox(height: 20),
          // Display numbers from 10 to 100 by 10s
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(10, (index) {
              int number = (index + 1) * 10;
              return NumberButton(number: number);
            }),
          ),
        ],
      ),
    );
  }
}

class NumberButton extends StatelessWidget {
  final int number;

  const NumberButton({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          // Handle button press
        },
        child: Text('$number'),
      ),
    );
  }
}
