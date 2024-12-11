import 'package:flutter/material.dart';
import '../services/api_service.dart';
import '../widgets/joke_type_grid.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> jokeTypes = [];

  @override
  void initState() {
    super.initState();
    getJokeTypes();
  }

  void getJokeTypes() async {
    ApiService.getJokeTypes().then((response) {
      setState(() {
        jokeTypes = response;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Joke App", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(icon: const Icon(Icons.casino, color: Colors.white), onPressed: () => Navigator.pushNamed(context, '/random'))
        ],
      ),
      body: JokeTypeGrid(jokeTypes: jokeTypes)
    );
  }
}
