import 'dart:io';
import 'dart:ui';
import 'package:three_in_one_game/screens/Blipel.dart';
import 'Alias.dart';
import 'Pantamima.dart';
import 'Settings.dart';
import 'package:flutter/material.dart';
import 'package:three_in_one_game/localization/consts.dart';
import 'package:three_in_one_game/localization/langs.dart';
import 'package:three_in_one_game/styles/styles.dart';
import 'package:share/share.dart';
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
  Future<bool> _onWillPop() {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Are you sure?'),
        content: Text('Do you want to exit an App'),
        actions: <Widget>[
          FlatButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text('No'),
          ),
          FlatButton(
            onPressed: () => exit(0),
            /*Navigator.of(context).pop(true)*/
            child: Text('Yes'),
          ),
        ],
      ),
    ) ??
        false;
  }

  @override
  Widget build(BuildContext context) {

    final fullW = MediaQuery.of(context).size.width * 1.00;
    final fullH = MediaQuery.of(context).size.height * 1.00;

    final buttonW = fullW * 0.60;
    final buttonH = fullH * 0.10;

    return WillPopScope(
      onWillPop: _onWillPop,
      child:Scaffold(
      backgroundColor: alias,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: alias,
        title:  Container(
          width: fullW,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: () {
                    Share.share('https://example.com');
                  },
                  icon: Icon(Icons.share, color: Colors.black)
              ),
              IconButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Settings()));
                  },
                  icon: Icon(Icons.settings, color: Colors.black)
              ),
            ],),
        ),
      ),
      body: Container(
        width: fullW,
        height: fullH,
        alignment: Alignment.center,
        child: Container(
            width: fullW,
            height: fullH * 0.45,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    width: buttonW,
                    height: buttonH,
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
                Container(
                    width: buttonW,
                    height: buttonH,
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
                Container(
                    width: buttonW,
                    height: buttonH,
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
              ],
          ),
        ),
      ),
    ));
  }
}
