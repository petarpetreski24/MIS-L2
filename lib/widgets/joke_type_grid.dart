import 'package:flutter/material.dart';
import 'joke_type_card.dart';

class JokeTypeGrid extends StatelessWidget {
  final List<String> jokeTypes;

  const JokeTypeGrid({super.key, required this.jokeTypes});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(16),
      crossAxisCount: 2,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      children: jokeTypes.map((type) => JokeTypeCard(type: type)).toList()
    );
  }
}