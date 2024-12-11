import '../models/joke_model.dart';
import 'package:flutter/material.dart';

class JokeCard extends StatelessWidget {
  final Joke joke;

  const JokeCard({super.key, required this.joke});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(joke.setup, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text(joke.punchline, style: const TextStyle(fontSize: 16))
          ]
        )
      )
    );
  }
}