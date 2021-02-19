// import 'dart:html';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:three_in_one_game/localization/consts.dart';
import 'package:three_in_one_game/localization/langs.dart';
import 'package:three_in_one_game/styles/styles.dart';
import '../main.dart';
import 'AboutAlias.dart';
import 'AliasFirstModeStart.dart';
import 'package:circular_check_box/circular_check_box.dart';
import 'AliasSecondModeStart.dart';

class Alias extends StatefulWidget {
  const Alias({
    this.initialCount = 2,
  });

  final int initialCount;

  @override
  _AliasState createState() => _AliasState();
}

class _AliasState extends State<Alias> {
  void _changeLanguage(Language language) async {
    Locale _locale = await setLocale(language.languageCode);
    ThreeInOne.setLocale(context, _locale);
  }

  int fieldCount = 0;
  int nextIndex = 0;
  List<TextEditingController> controllers = <TextEditingController>[];

  List<Widget> _buildList() {
    int i;
    if (controllers.length < fieldCount) {
      for (i = controllers.length; i < fieldCount; i++) {
        controllers.add(TextEditingController());
      }
    }
    i = 0;
    return controllers.map<Widget>((TextEditingController controller) {
      int displayNumber = i + 1;
      i++;
      return TextField(
        controller: controller,
        maxLength: 20,
        decoration: InputDecoration(
          labelText: "Team $displayNumber",
          counterText: "",
          suffixIcon: IconButton(
            icon: Icon(Icons.clear),
            onPressed: () {
              setState(() {
                fieldCount--;
                controllers.remove(controller);
              });
            },
          ),
        ),
      );
    }).toList(); // convert to a list
  }

  bool valuefirst = true;
  bool valuesecond = false;
  bool hideField = false;

  showAlertDialog(BuildContext context) {
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
    AlertDialog alert = AlertDialog(
      title: Text("Please select a mode"),
      actions: [
        okButton,
      ],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  showAlertDialog1(BuildContext context) {
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
    AlertDialog alert = AlertDialog(
      title: Text("There must be at least one team"),
      content: Text("Please add team"),
      actions: [
        okButton,
      ],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> player = _buildList();
    player.add(
      GestureDetector(
          onTap: () {
            setState(() {
              fieldCount++;
            });
          },
          child: Column(
            children: [
              Container(
                color: Colors.blue,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    'add team',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: CircularCheckBox(
                  value: this.valuefirst,
                  onChanged: (bool value) {
                    setState(() {
                      if (this.valuesecond == value) {
                        this.valuefirst = value;
                        this.valuesecond = false;
                      } else {
                        this.valuefirst = value;
                      }
                    });
                  },
                ),
                title: Text(
                  "First mode",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ListTile(
                leading: CircularCheckBox(
                  value: this.valuesecond,
                  onChanged: (bool value) {
                    setState(() {
                      if (this.valuefirst == value) {
                        this.valuesecond = value;
                        this.valuefirst = false;
                      } else {
                        this.valuesecond = value;
                      }
                    });
                  },
                ),
                title: Text(
                  "Second mode",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          )),
    );
    return new Scaffold(
        appBar: AppBar(
            elevation: 0.0, backgroundColor: Colors.blue, title: Text("Alias")),
        body: ListView(
            padding: EdgeInsets.all(0),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: player),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 20),
              child: FloatingActionButton(
                  child: Text("About"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AboutAlias()),
                    );
                  },
                  heroTag: null),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: FloatingActionButton(
                  child: Text(
                    "Start",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    if (this.fieldCount == 0) {
                      showAlertDialog1(context);
                    }
                    if (this.valuefirst == true) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AliasFirstModeStart()));
                    } else if (this.valuefirst == false &&
                        valuesecond == true) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AliasSecondModeStart()));
                    } else if (valuefirst & valuesecond == false) {
                      showAlertDialog(context);
                    }
                  },
                  heroTag: null),
            )
          ],
        ));
  }

  @override
  void initState() {
    super.initState();
    fieldCount = widget.initialCount;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void didUpdateWidget(Alias oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }
}
