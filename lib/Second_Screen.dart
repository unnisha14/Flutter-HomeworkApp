import 'package:flutter/material.dart';

class Second_Screen extends StatelessWidget {
  late List<bool> value;

  Second_Screen({required List<bool> value}) {
    this.value = value;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Teacher Profile",
            style: TextStyle(fontSize: 35.0, color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        body: Center(
          child: ListView(shrinkWrap: true, children: <Widget>[
            Container(
              margin: EdgeInsets.all(13.0),
              child: Text("You teach these class and subjects",
                  style:
                      TextStyle(fontSize: 45.0, fontWeight: FontWeight.bold)),
            ),
            Container(
                margin: EdgeInsets.all(13.0),
                child:
                    Wrap(spacing: 10.0, children: display_big(0, "Class 12"))),
            Container(
                margin: EdgeInsets.all(13.0),
                child:
                    Wrap(spacing: 10.0, children: display_big(6, "Class 11"))),
            Container(
                margin: EdgeInsets.all(13.0),
                child:
                    Wrap(spacing: 10.0, children: display_mid(12, "Class 10"))),
            Container(
                margin: EdgeInsets.all(13.0),
                child:
                    Wrap(spacing: 10.0, children: display_mid(17, "Class 9"))),
            Container(
                margin: EdgeInsets.all(13.0),
                child:
                    Wrap(spacing: 10.0, children: display_mid(22, "Class 8"))),
            Container(
                margin: EdgeInsets.all(13.0),
                child:
                    Wrap(spacing: 10.0, children: display_mid(27, "Class 7"))),
            Container(
                margin: EdgeInsets.all(13.0),
                child:
                    Wrap(spacing: 10.0, children: display_mid(32, "Class 6"))),
            Container(
                margin: EdgeInsets.all(13.0),
                child:
                    Wrap(spacing: 10.0, children: display_mid(37, "Class 5"))),
            Container(
                margin: EdgeInsets.all(13.0),
                child:
                    Wrap(spacing: 10.0, children: display_mid(42, "Class 4"))),
            Container(
                margin: EdgeInsets.all(13.0),
                child:
                    Wrap(spacing: 10.0, children: display_mid(47, "Class 3"))),
            Container(
                margin: EdgeInsets.all(13.0),
                child: Wrap(
                    spacing: 10.0, children: display_small(52, "Class 2"))),
            Container(
                margin: EdgeInsets.all(13.0),
                child: Wrap(
                    spacing: 10.0, children: display_small(56, "Class 1"))),
          ]),
        ));
  }

  List<Widget> display_mid(int i, String str) {
    List<Widget> sub = <Widget>[];
    sub.add(Text(
      str,
      textAlign: TextAlign.center,
      style:
          TextStyle(fontSize: 35.0, backgroundColor: Colors.deepPurpleAccent),
    ));
    for (int j = 0; j < 5; j++) {
      if (value[i + j]) {
        switch (j) {
          case 0:
            sub.add(Text(
              "Maths,",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0),
            ));
            break;
          case 1:
            sub.add(Text(
              "Science,",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0),
            ));
            break;
          case 2:
            sub.add(Text(
              "Social Science,",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0),
            ));
            break;
          case 3:
            sub.add(Text(
              "English,",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0),
            ));
            break;
          default:
            sub.add(Text(
              "Hindi",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0),
            ));
            break;
        }
      }
    }
    return sub.length == 1 ? [] : sub;
  }

  List<Widget> display_big(int i, String str) {
    List<Widget> sub = <Widget>[];
    sub.add(Text(
      str,
      textAlign: TextAlign.center,
      style:
          TextStyle(fontSize: 35.0, backgroundColor: Colors.deepPurpleAccent),
    ));
    for (int j = 0; j < 6; j++) {
      if (value[i + j]) {
        switch (j) {
          case 0:
            sub.add(Text(
              "Maths,",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0),
            ));
            break;
          case 1:
            sub.add(Text(
              "Physics,",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0),
            ));
            break;
          case 2:
            sub.add(Text(
              "Chemistry,",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0),
            ));
            break;
          case 3:
            sub.add(Text(
              "Biology,",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0),
            ));
            break;
          case 4:
            sub.add(Text(
              "English,",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0),
            ));
            break;
          default:
            sub.add(Text(
              "Social Sudies",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0),
            ));
            break;
        }
      }
    }
    return sub.length == 1 ? [] : sub;
  }

  List<Widget> display_small(int i, String str) {
    List<Widget> sub = <Widget>[];
    sub.add(Text(
      str,
      textAlign: TextAlign.center,
      style:
          TextStyle(fontSize: 35.0, backgroundColor: Colors.deepPurpleAccent),
    ));
    for (int j = 0; j < 4; j++) {
      if (value[i + j]) {
        switch (j) {
          case 0:
            sub.add(Text(
              "Maths,",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0),
            ));
            break;
          case 1:
            sub.add(Text(
              "Environmental Studies,",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0),
            ));
            break;
          case 2:
            sub.add(Text(
              "Hindi,",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0),
            ));
            break;
          default:
            sub.add(Text(
              "English",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0),
            ));
            break;
        }
      }
    }
    return sub.length == 1 ? [] : sub;
  }
}
