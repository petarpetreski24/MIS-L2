import 'dart:convert';
import 'package:http/http.dart' as http;


import '../models/joke_model.dart';

class ApiService {
  static Future<List<String>> getJokeTypes() async {
    var response = await http.get(Uri.parse("https://official-joke-api.appspot.com/types"));
    return List<String>.from(json.decode(response.body));
  }

  static Future<List<Joke>> getJokesByType(String type) async {
    var response = await http.get(Uri.parse("https://official-joke-api.appspot.com/jokes/$type/ten"));
    var data = json.decode(response.body);
    return List<Joke>.from(data.map((x) => Joke.fromJson(x)));
  }

  static Future<Joke> getRandomJoke() async {
    var response = await http.get(Uri.parse("https://official-joke-api.appspot.com/random_joke"));
    return Joke.fromJson(json.decode(response.body));
  }
}