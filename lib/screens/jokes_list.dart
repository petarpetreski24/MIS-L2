import '../models/joke_model.dart';
import '../services/api_service.dart';
import 'package:flutter/material.dart';

import '../widgets/joke_card.dart';

class JokesList extends StatefulWidget {
  const JokesList({super.key});

  @override
  State<JokesList> createState() => _JokesListState();
}

class _JokesListState extends State<JokesList> {
  List<Joke> jokes = [];
  String type = '';

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    type = ModalRoute.of(context)?.settings.arguments as String;
    getJokes();
  }

  void getJokes() async {
    ApiService.getJokesByType(type).then((response) {
      setState(() {
        jokes = response;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text( "${type.toUpperCase()} Jokes", style: const TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue
      ),
      body: ListView.builder(
        itemCount: jokes.length,
        itemBuilder: (context, index) => JokeCard(joke: jokes[index])
      )
    );
  }
}