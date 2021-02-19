// import 'dart:async';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'Score.dart';
import 'Settings.dart';
import 'AliasSecondModeStart.dart';
import 'package:flutter/material.dart';
import 'package:three_in_one_game/localization/consts.dart';
import 'package:three_in_one_game/localization/langs.dart';
import 'package:three_in_one_game/styles/styles.dart';
import '../main.dart';
import 'package:timer_count_down/timer_count_down.dart';

int count = 0;

class AliasFirstModeStart extends StatefulWidget {
  @override
  _AliasFirstModeStartState createState() => _AliasFirstModeStartState();
}

class _AliasFirstModeStartState extends State<AliasFirstModeStart> {
  void _changeLanguage(Language language) async {
    Locale _locale = await setLocale(language.languageCode);
    ThreeInOne.setLocale(context, _locale);
  }

  bool _hasBeenPressed1 = false;
  bool _hasBeenPressed2 = false;
  bool _hasBeenPressed3 = false;
  bool _hasBeenPressed4 = false;
  bool _hasBeenPressed5 = false;
  bool _hasBeenPressed6 = false;
  bool _hasBeenPressed7 = false;

  @override
  Widget build(BuildContext context) {
    // startTimer();
    final fullW = MediaQuery.of(context).size.width * 1.00;
    final fullH = MediaQuery.of(context).size.height * 0.8;
    final buttonW = fullW * 0.60;
    final buttonH = fullH * 0.10;

    return Scaffold(
      backgroundColor: alias,
      appBar: AppBar(title: Text("Alias First Mode")),
      body: Padding(
        padding: const EdgeInsets.only(),
        child: Container(
          width: fullW,
          height: fullH,
          alignment: Alignment.center,
          child: Container(
            width: fullW,
            height: fullH,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Countdown(
                  seconds: 5,
                  build: (BuildContext context, double time) => Text(
                    time.toString(),
                    style: TextStyle(fontSize: 60),
                  ),
                  interval: Duration(milliseconds: 100),
                  onFinished: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Score()),
                    );
                    print('Timer is done!');
                  },
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
                      child: Text(getTranslated(context, 'ALIAS'),
                          style: TextStyle(fontSize: 25, color: Colors.white)),
                      color: _hasBeenPressed1
                          ? Colors.deepPurple
                          : Colors.deepPurpleAccent,
                      onPressed: () => {
                        setState(() {
                          _hasBeenPressed1 = !_hasBeenPressed1;
                          if (_hasBeenPressed1 == true) {
                            ++count;
                          } else {
                            --count;
                          }
                        })
                      },
                    )),
                Container(
                    width: buttonW,
                    height: buttonH,
                    child: FlatButton(
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(color: Colors.blueAccent),
                      ),
                      child: Text(getTranslated(context, 'PANTAMIMA'),
                          style: TextStyle(fontSize: 25, color: Colors.white)),
                      color: _hasBeenPressed2
                          ? Colors.deepPurple
                          : Colors.deepPurpleAccent,
                      onPressed: () => {
                        setState(() {
                          _hasBeenPressed2 = !_hasBeenPressed2;
                          if (_hasBeenPressed2 == true) {
                            ++count;
                          } else {
                            --count;
                          }
                        })
                      },
                    )),
                Container(
                    width: buttonW,
                    height: buttonH,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(color: Colors.blueAccent),
                      ),
                      child: Text(getTranslated(context, 'BLIPEL'),
                          style: TextStyle(fontSize: 25, color: Colors.white)),
                      color: _hasBeenPressed3
                          ? Colors.deepPurple
                          : Colors.deepPurpleAccent,
                      onPressed: () => {
                        setState(() {
                          _hasBeenPressed3 = !_hasBeenPressed3;
                          if (_hasBeenPressed3 == true) {
                            ++count;
                          } else {
                            --count;
                          }
                        })
                      },
                    )),
                Container(
                    width: buttonW,
                    height: buttonH,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(color: Colors.blueAccent),
                      ),
                      child: Text(getTranslated(context, 'BLIPEL'),
                          style: TextStyle(fontSize: 25, color: Colors.white)),
                      color: _hasBeenPressed4
                          ? Colors.deepPurple
                          : Colors.deepPurpleAccent,
                      onPressed: () => {
                        setState(() {
                          _hasBeenPressed4 = !_hasBeenPressed4;
                          if (_hasBeenPressed4 == true) {
                            ++count;
                          } else {
                            --count;
                          }
                        })
                      },
                    )),
                Container(
                    width: buttonW,
                    height: buttonH,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(color: Colors.blueAccent),
                      ),
                      child: Text(getTranslated(context, 'BLIPEL'),
                          style: TextStyle(fontSize: 25, color: Colors.white)),
                      color: _hasBeenPressed5
                          ? Colors.deepPurple
                          : Colors.deepPurpleAccent,
                      onPressed: () => {
                        setState(() {
                          _hasBeenPressed5 = !_hasBeenPressed5;
                          if (_hasBeenPressed5 == true) {
                            ++count;
                          } else {
                            --count;
                          }
                        })
                      },
                    )),
                Container(
                    width: buttonW,
                    height: buttonH,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(color: Colors.blueAccent),
                      ),
                      child: Text(getTranslated(context, 'BLIPEL'),
                          style: TextStyle(fontSize: 25, color: Colors.white)),
                      color: _hasBeenPressed6
                          ? Colors.deepPurple
                          : Colors.deepPurpleAccent,
                      onPressed: () => {
                        setState(() {
                          _hasBeenPressed6 = !_hasBeenPressed6;
                          if (_hasBeenPressed6 == true) {
                            ++count;
                          } else {
                            --count;
                          }
                        })
                      },
                    )),
                Container(
                    width: buttonW,
                    height: buttonH,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(color: Colors.blueAccent),
                      ),
                      child: Text(getTranslated(context, 'BLIPEL'),
                          style: TextStyle(fontSize: 25, color: Colors.white)),
                      color: _hasBeenPressed7
                          ? Colors.deepPurple
                          : Colors.deepPurpleAccent,
                      onPressed: () => {
                        setState(() {
                          _hasBeenPressed7 = !_hasBeenPressed7;
                          if (_hasBeenPressed7 == true) {
                            ++count;
                          } else {
                            --count;
                          }
                        })
                      },
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Container(
                      width: buttonW * 0.5,
                      height: buttonH,
                      child: FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                            side: BorderSide(color: Colors.blueAccent),
                          ),
                          child: Text(getTranslated(context, 'NEXT'),
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white)),
                          color: Colors.purple[800],
                          onPressed: () => {})),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
