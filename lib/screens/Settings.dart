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
  double _valueTime = 20;
  double _valueWiningPoint = 100;
  bool isSwitched = false;

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
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: alias,
        title: Text("Setting", style: TextStyle(color: Colors.black)),
        iconTheme: IconThemeData(
          color: Colors.black
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("General"),
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
            title: Text("Game"),
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
          SliderTheme(
              data: SliderThemeData(
                trackHeight: 1,
              ),
              child: Slider(
                min: 0,
                max: 100,
                value: _valueTime,
                onChanged: (value) {
                  setState(() {
                    _valueTime = value;
                  });
                },
              )),
          ListTile(
            leading: Icon(Icons.bar_chart),
            title: Text("Wining points"),
            // onTap: () => ,
          ),
          SliderTheme(
              data: SliderThemeData(
                trackHeight: 1,
              ),
              child: Slider(
                min: 0,
                max: 200,
                value: _valueWiningPoint,
                onChanged: (value) {
                  setState(() {
                    _valueWiningPoint = value;
                  });
                },
              )),
          ListTile(
            leading: Icon(Icons.volume_up_outlined),
            title: Text("Voice"),
            subtitle: Text("Voice in the game"),
            trailing: Switch(
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                  print(isSwitched);
                });
              },
              activeTrackColor: Colors.blue,
              activeColor: Colors.lightBlueAccent,
            ),
            // onTap: () => ,
          ),
          Text("                  Help"),
          Divider(
            thickness: 1,
          ),
          ListTile(
            leading: Icon(Icons.feedback_outlined),
            title: Text("Feedback"),
            subtitle: Text("Report technical issues or suggest new features"),
            // onTap: () => ,
          ),
          ListTile(
            leading: Icon(Icons.star_rate_outlined),
            title: Text("Rate us"),
            // onTap: () => ,
          ),
          ListTile(
            leading: Icon(Icons.perm_device_information),
            title: Text("Version"),
            subtitle: Text("1.0"),
            // onTap: () => ,
          ),
        ],
      ),
    );
  }
}
