import 'package:flutter/material.dart';
import 'package:mis_l2/screens/home.dart';
import 'package:mis_l2/screens/jokes_list.dart';
import 'package:mis_l2/screens/random_joke.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Joke App',
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/jokes': (context) => const JokesList(),
        '/random': (context) => const RandomJoke(),
      },
    );
  }
}