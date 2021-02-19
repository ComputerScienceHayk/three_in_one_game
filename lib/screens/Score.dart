import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:three_in_one_game/localization/consts.dart';
import 'package:three_in_one_game/localization/langs.dart';
import 'package:three_in_one_game/screens/AliasFirstModeStart.dart';
import 'package:three_in_one_game/styles/styles.dart';
import '../main.dart';

class Score extends StatefulWidget {
  @override
  _ScoreState createState() => _ScoreState();
}

class _ScoreState extends State<Score> {
  void _changeLanguage(Language language) async {
    Locale _locale = await setLocale(language.languageCode);
    ThreeInOne.setLocale(context, _locale);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: alias,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: alias,
        title: Text("Score", style: TextStyle(color: Colors.black)),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Text("team1 ${count.toString()}",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold)),
    );
  }
}
