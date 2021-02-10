import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:three_in_one_game/localization/consts.dart';
import 'package:three_in_one_game/localization/langs.dart';
import 'package:three_in_one_game/styles/styles.dart';
import '../main.dart';
import 'AboutAlias.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  void _changeLanguage(Language language) async {
    Locale _locale = await setLocale(language.languageCode);
    ThreeInOne.setLocale(context, _locale);
  }

  final List<Widget> list = new List<Widget>();
  double _value = 20;
  @override
  Widget build(BuildContext context) {
    if (list.length < 3) {
      list.add(new TextField(
        decoration: InputDecoration(hintText: 'Team ${list.length + 1}'),
      ));
      list.add(new TextField(
        decoration: InputDecoration(hintText: 'Team ${list.length + 1}'),
      ));
    }
    return new Scaffold(
      backgroundColor: alias,
      body: ListView(
        children: [
          ListTile(
            title: Text("          General"),
            // onTap: () => ,
          ),
          Divider(
            thickness: 1,
          ),

          // onTap: () => ,
          ListTile(
            leading: Icon(Icons.brush),
            title: Text("Theme"),
            subtitle: Text("default"),

            // onTap: () => ,
          ),
          ListTile(
            title: Text("           Game"),
          ),
          ListTile(
            leading: Icon(Icons.language),
            title: Text("Language"),
            subtitle: Text("English"),
            // onTap: () => ,
          ),
          ListTile(
            leading: Icon(Icons.watch_later),
            title: Text("Game time"),
            subtitle: Text("in seconds"),
            // onTap: () => ,
          ),
          Slider(
            min: 0,
            max: 100,
            value: _value,
            onChanged: (value) {
              setState(() {
                _value = value;
              });
            },
          ),
          ListTile(
            leading: Icon(Icons.brush),
            title: Text("Theme"),
            subtitle: Text("default"),
            // onTap: () => ,
          ),
          ListTile(
            leading: Icon(Icons.brush),
            title: Text("Theme"),
            subtitle: Text("default"),
            // onTap: () => ,
          ),
          ListTile(
            leading: Icon(Icons.brush),
            title: Text("Theme"),
            subtitle: Text("default"),
            // onTap: () => ,
          ),
        ],
      ),
    );
  }
}
