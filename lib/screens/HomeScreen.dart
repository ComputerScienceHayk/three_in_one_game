import 'dart:ui';
import 'package:three_in_one_game/screens/Blipel.dart';

import 'Alias.dart';
import 'Pantamima.dart';
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
      backgroundColor: alias,
      appBar: AppBar(
        title: Text(getTranslated(context, 'hi')),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 340),
              child: IconButton(
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => ),
                      },
                      icon: Icon(Icons.settings)),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 250,bottom: 8.0),
              child: Container(
                width: 250,
                 height: 70,
                  child: FlatButton(
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(color: Colors.blueAccent),
                    ),
                    child: Text(
                        getTranslated(context, 'ALIAS'),
                        style: TextStyle(fontSize: 25,color: Colors.white)
                    ),
                    color: Colors.deepPurpleAccent,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Alias()));
                    },
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 250,
                 height: 70,
                  child: FlatButton(
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(color: Colors.blueAccent),
                    ),
                    child: Text(
                        getTranslated(context, 'PANTAMIMA'),
                      style: TextStyle(fontSize: 25,color: Colors.white)
                    ),
                    color: Colors.deepPurpleAccent,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Pantamima()));
                    },
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 250,
                 height: 70,
                 child: FlatButton(
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(20),
                     side: BorderSide(color: Colors.blueAccent),
                   ),
                   child: Text(
                       getTranslated(context, 'BLIPEL'),
                       style: TextStyle(fontSize: 25,color: Colors.white)
                   ),
                   color: Colors.deepPurpleAccent,
                   onPressed: () {
                     Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => Blipel()));
                   },
                 )
              ),
            )
          ],
        ),
      ),
    );
  }
}
