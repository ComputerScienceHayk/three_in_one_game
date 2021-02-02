import 'package:flutter/material.dart';
import 'package:three_in_one_game/localization/consts.dart';
import 'package:three_in_one_game/localization/langs.dart';
import 'package:three_in_one_game/styles/styles.dart';

import '../main.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void _changeLanguage(Language language) async {
    Locale _locale = await setLocale(language.languageCode);
    ThreeInOne.setLocale(context, _locale);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Alias,
      appBar: AppBar(
        title: Text(getTranslated(context, 'hi')),
      ),
      body: Center(
        child: Column(
          children: [
            DropdownButton<Language>(
              iconSize: 30,
              hint: Text(getTranslated(context, 'hi')),
              onChanged: (Language language) {
                _changeLanguage(language);
              },
              items: Language.languageList()
                  .map<DropdownMenuItem<Language>>(
                    (e) => DropdownMenuItem<Language>(
                  value: e,
                  child: Text(e.name),
                ),
              )
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}
