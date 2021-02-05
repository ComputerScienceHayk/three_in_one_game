import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:three_in_one_game/localization/consts.dart';
import 'package:three_in_one_game/localization/langs.dart';
import 'package:three_in_one_game/styles/styles.dart';
import '../main.dart';


class AboutAlias extends StatefulWidget {
  @override
  _AboutAliasState createState() => _AboutAliasState();
}

class _AboutAliasState extends State<AboutAlias> {
  void _changeLanguage(Language language) async {
    Locale _locale = await setLocale(language.languageCode);
    ThreeInOne.setLocale(context, _locale);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 40,left: 20,right: 20),
          child: Container(
            child: SingleChildScrollView(
              child: new Text("խաղի նկարագրություն - Պետք է բաժանվել թիմերի (2-4 հոգի)։ Խաղի նպատակն է, տրված ժամանակում, բացատրել Ձեր թիմակցին, որքան հնարավոր է"
                  " շատ բառեր, որոնք ցույց են տրվում էկրանին, հաղթում է այն թիմը, որը առաջինն է անցնում հաղթանակի միավորների շեմը։"
                  "Անհրաժեշտ է որքան հնարավոր է շատ բառ բացատրել թիմակիցներին այլ կերպ՝ չօգտագործելով նույնարմատ բառեր և այդ բառերի թարգմանությունն այլ լեզուներով:"
                  "Յուրաքանչյուր գուշակած բառը 1 միավոր է։ Առաջադրանքը կատարելու համար տրվում է 1 րոպե։",

                style: new TextStyle(
                  fontSize: 30, color: Colors.black87,
                ),
              ),
            ),),
        )
    );
  }
}

