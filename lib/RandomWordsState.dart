import 'dart:math';

import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();

    return Text(
        wordPair.first.toUpperCase() + " " + wordPair.second.toUpperCase(),
        style: TextStyle(
            fontSize: 24.0,
            color: Color.fromRGBO(
                Random.secure().nextInt(255),
                Random.secure().nextInt(255),
                Random.secure().nextInt(255),
                1)));
  }
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}
