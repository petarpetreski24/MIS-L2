import 'package:flutter/material.dart';

class JokeTypeCard extends StatelessWidget {
  final String type;

  const JokeTypeCard({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: InkWell(
        onTap: () => Navigator.pushNamed(context, '/jokes', arguments: type),
        child: Center(
          child: Text(type.toUpperCase(), style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
        )
      )
    );
  }
}
