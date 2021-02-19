// import 'dart:async';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'Score.dart';
import 'Settings.dart';
import 'package:flutter/material.dart';
import 'package:three_in_one_game/localization/consts.dart';
import 'package:three_in_one_game/localization/langs.dart';
import 'package:three_in_one_game/styles/styles.dart';
import 'package:share/share.dart';
import '../main.dart';
import 'package:timer_count_down/timer_count_down.dart';


 int count = 0;
class AliasSecondModeStart extends StatefulWidget {
  @override
  _AliasSecondModeStartState createState() => _AliasSecondModeStartState();
}

class _AliasSecondModeStartState extends State<AliasSecondModeStart> {
  void _changeLanguage(Language language) async {
    Locale _locale = await setLocale(language.languageCode);
    ThreeInOne.setLocale(context, _locale);
  }

  bool _accept = false;
  bool _fail = false;
  @override
  Widget build(BuildContext context) {
    // startTimer();
    final fullW = MediaQuery.of(context).size.width * 1.00;
    final fullH = MediaQuery.of(context).size.height * 0.8;
    final buttonW = fullW * 0.60;
    final buttonH = fullH * 0.10;

    return Scaffold(
      backgroundColor: alias,
      appBar: AppBar(
        title: Text("Alias Second Mode"),
      ),
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
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => ),
                    // );
                  },
                ),
                Container(
                    width: buttonW,
                    height: buttonH,
                    child: FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(color: Colors.blueAccent),
                        ),
                        child: Text(getTranslated(context, 'ALIAS'),
                            style: TextStyle(
                                fontSize: 25, color: Colors.white)),
                        color: Colors.purple[800],
                        onPressed: () => {})),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                          width: buttonW * 0.5,
                          height: buttonH,
                          child: FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                                side: BorderSide(color: Colors.blueAccent),
                              ),
                              child: Text(getTranslated(context, 'FAIL'),
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.white)),
                              color: Colors.purple[800],
                              onPressed: () => {
                                setState(() {
                                  _fail = !_fail;
                                  if (_fail == true) {
                                    --count;
                                  }
                                })
                              })),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                          width: buttonW * 0.5,
                          height: buttonH,
                          child: FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                                side: BorderSide(color: Colors.blueAccent),
                              ),
                              child: Text(getTranslated(context, 'ACCEPT'),
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.white)),
                              color: Colors.purple[800],
                              onPressed: () => {
                                setState(() {
                                  _accept = !_accept;
                                  if (_accept == true) {
                                    ++count;
                                  }
                                })
                              })),
                    ),
                    Text(count.toString())
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
