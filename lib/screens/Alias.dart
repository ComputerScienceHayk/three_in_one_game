import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:three_in_one_game/localization/consts.dart';
import 'package:three_in_one_game/localization/langs.dart';
import 'package:three_in_one_game/styles/styles.dart';
import '../main.dart';
import 'AboutAlias.dart';

class Alias extends StatefulWidget {
  @override
  _AliasState createState() => _AliasState();
}

class _AliasState extends State<Alias> {
  void _changeLanguage(Language language) async {
    Locale _locale = await setLocale(language.languageCode);
    ThreeInOne.setLocale(context, _locale);
  }
  final List<Widget> list = new List<Widget>();

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
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: new Container(
                padding: EdgeInsets.all(20.0),
                child: new ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    Widget widget = list.elementAt(index);
                    return widget;
                  },
                  itemCount: list.length,
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: FloatingActionButton(child: Text("About"), onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutAlias()),
                );
              },
              heroTag: null),
            ),
            FloatingActionButton(
              onPressed: () {
                list.add(new TextField(
                  decoration:
                      InputDecoration(hintText: 'Team ${list.length + 1}'),
                ));
                setState(() {});
              },
              heroTag: null,
              child: new Icon(Icons.add),
            )
          ],
        ));
  }
}
