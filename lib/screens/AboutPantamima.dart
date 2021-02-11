import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:three_in_one_game/localization/consts.dart';
import 'package:three_in_one_game/localization/langs.dart';
import 'package:three_in_one_game/styles/styles.dart';
import '../main.dart';


class AboutPantamima extends StatefulWidget {
  @override
  _AboutPantamimaState createState() => _AboutPantamimaState();
}

class _AboutPantamimaState extends State<AboutPantamima> {
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
            "խաղի նկարագրություն - Խաղի գաղափարը կայանում է նրանում, որ ճամբարականները դիմախաղի և ժեստերի միջոցով պետք է ցույց տան առարկաներ, կենդանիներ, մասնագիտություններ, "
                "հույզեր, իսկ ընկերները պետք է գուշակեն:"
            "Չպետք է օգտագործվի խոսք կամ հուշող բառեր"
            "Մասնակիցները բաժանվում են երկու խմբի՝ 1ին խումբ և 2րդ խումբ: Այնուհետև 1ին խմբի խաղացողները 2րդ խմբի մեկ խաղացողի ականջին շշնջում են այն բառը որը պետք է գործողություններով ցույց տա հենց իր խմբին:"
          "Ճիշտ պատասխանելու դեպքում խումբը ստանում է միավոր: Եվ այդպես հաջորդաբար երկու խմբերն էլ մասնակցում են խաղին, իսկ հաղթում է այն խումբը որը շատ միավորներ է ստանում:"
          "Պանտամիմը խաղ կարող ենք բաժանել հատվածների՝ ամեն անգամ անդրադառնալով տարբեր բնագավառների՝ մասնագիտություններ, կենդանի։"
          "Խաղի advanced mode - խաղի նպատակն է մեկ անգամից գուշակել տրված երեք բառերից մեկը։",
            style: new TextStyle(
              fontSize: 30, color: Colors.black87,
            ),
          ),
        ),),
      )
    );
  }
}