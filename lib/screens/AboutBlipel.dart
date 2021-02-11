import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:three_in_one_game/localization/consts.dart';
import 'package:three_in_one_game/localization/langs.dart';
import 'package:three_in_one_game/styles/styles.dart';
import '../main.dart';


class AboutBlipel extends StatefulWidget {
  @override
  _AboutBlipelState createState() => _AboutBlipelState();
}

class _AboutBlipelState extends State<AboutBlipel> {
  void _changeLanguage(Language language) async {
    Locale _locale = await setLocale(language.languageCode);
    ThreeInOne.setLocale(context, _locale);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40,left: 20,right: 20),
        child: Container(
          child: SingleChildScrollView(
            child: new Text(
              "խաղի նկարագրություն - Խաղի սկզբում ընտրվում է մեկ հոգի, նրանից բացի թիմի բոլորին տրամադրվում է բառը / բայ /։ "
                  "Որից հետո, մի հոգին, ով չգիտի բառը, սկսում է հարցեր տալ բոլորին, մինչև գտնի պահված բառը։"
                  "տրվում է ժամանակ, թե յուրաքանչյուրին ինչքան ժամանակում կարող է հարց տալ"
                  "հաղթում է այն մարդը, ով ամենակարճ ժամանակում գտնում է իրեն բաժին ընկած բառը",
              style: new TextStyle(
                fontSize: 25, color: Colors.black87,
              ),
            ),
          ),),
      ),
    );
  }
}

