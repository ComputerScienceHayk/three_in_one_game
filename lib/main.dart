import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:three_in_one_game/screens/HomeScreen.dart';

import 'localization/consts.dart';
import 'localization/localizations.dart';

void main() {
  runApp(ThreeInOne());
}

class ThreeInOne extends StatefulWidget {
  const ThreeInOne({ Key key}) : super(key: key);
  static void setLocale(BuildContext context, Locale newLocale) {
    _ThreeInOneState state =
    context.findAncestorStateOfType<_ThreeInOneState>();
    state.setLocale(newLocale);
  }
  @override
  _ThreeInOneState createState() => _ThreeInOneState();
}

class _ThreeInOneState extends State<ThreeInOne> {

  Locale _locale;
  setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  void didChangeDependencies() {
    getLocale().then((locale) {
      setState(() {
        this._locale = locale;
      });
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.black, //or set color with: Color(0xFF0000FF)
      systemNavigationBarColor: Colors.red,
      //systemNavigationBarDividerColor: Colors.green
    ));

    if (this._locale == null) {
      return Container(
        child: Center(
          child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue[800])),
        ),
      );
    } else {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "All in loyalty",
        theme: ThemeData(primarySwatch: Colors.blue),
        locale: _locale,
        supportedLocales: [
          Locale("en", "US"),
          Locale("ru", "RU"),
          Locale("am", "AM"),
        ],
        localizationsDelegates: [
          DemoLocalization.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        localeResolutionCallback: (locale, supportedLocales) {
          for (var supportedLocale in supportedLocales) {
            if (supportedLocale.languageCode == locale.languageCode &&
                supportedLocale.countryCode == locale.countryCode) {
              return supportedLocale;
            }
          }
          return supportedLocales.first;
        },
        home: HomeScreen(),
      );
    }
  }
}
