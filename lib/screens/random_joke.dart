import 'package:flutter/material.dart';

import '../models/joke_model.dart';
import '../services/api_service.dart';
import '../widgets/joke_card.dart';

class RandomJoke extends StatefulWidget {
  const RandomJoke({super.key});

  @override
  State<RandomJoke> createState() => _RandomJokeState();
}

class _RandomJokeState extends State<RandomJoke> {
  Joke? joke;

  @override
  void initState() {
    super.initState();
    getRandomJoke();
  }

  void getRandomJoke() async {
    ApiService.getRandomJoke().then((response) {
      setState(() {
        joke = response;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Random Joke", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue
      ),
      body: ListView(
        padding: EdgeInsets.all(8.0),
        children: [
          if (joke != null)
            JokeCard(joke: joke!)
        ]
      )
    );
  }
}