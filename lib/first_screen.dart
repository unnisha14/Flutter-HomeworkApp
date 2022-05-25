import 'package:flutter/material.dart';
import 'dart:async';

import 'Second_Screen.dart';

class First_Screen extends StatefulWidget {
  _first_screen createState() => _first_screen();
}

class _first_screen extends State<First_Screen> {
  bool pressed = false;
  List<bool> val = List.filled(60, false);
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
            child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(13.0),
              child: Text(
                "Which subjects and grades you teach?",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 45.0, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.all(13.0),
              child: Text(
                "Class12",
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 35.0, backgroundColor: Colors.deepPurpleAccent),
              ),
            ),
            Container(
                height: 500.0,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: list_items_big(0))),
            Container(
              margin: EdgeInsets.all(13.0),
              child: Text(
                "Class 11",
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 35.0, backgroundColor: Colors.deepPurpleAccent),
              ),
            ),
            Container(
                height: 500.0,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: list_items_big(6))),
            Container(
              margin: EdgeInsets.all(13.0),
              child: Text(
                "Class 10",
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 35.0, backgroundColor: Colors.deepPurpleAccent),
              ),
            ),
            Container(
                height: 500.0,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: list_items(12))),
            Container(
              margin: EdgeInsets.all(13.0),
              child: Text(
                "Class 9",
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 35.0, backgroundColor: Colors.deepPurpleAccent),
              ),
            ),
            Container(
                height: 500.0,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: list_items(17))),
            Container(
              margin: EdgeInsets.all(13.0),
              child: Text(
                "Class 8",
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 35.0, backgroundColor: Colors.deepPurpleAccent),
              ),
            ),
            Container(
                height: 500.0,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: list_items(22))),
            Container(
              margin: EdgeInsets.all(13.0),
              child: Text(
                "Class 7",
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 35.0, backgroundColor: Colors.deepPurpleAccent),
              ),
            ),
            Container(
                height: 500.0,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: list_items(27))),
            Container(
              margin: EdgeInsets.all(13.0),
              child: Text(
                "Class 6",
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 35.0, backgroundColor: Colors.deepPurpleAccent),
              ),
            ),
            Container(
                height: 500.0,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: list_items(32))),
            Container(
              margin: EdgeInsets.all(13.0),
              child: Text(
                "Class 5",
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 35.0, backgroundColor: Colors.deepPurpleAccent),
              ),
            ),
            Container(
                height: 500.0,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: list_items(37))),
            Container(
              margin: EdgeInsets.all(13.0),
              child: Text(
                "Class 4",
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 35.0, backgroundColor: Colors.deepPurpleAccent),
              ),
            ),
            Container(
                height: 500.0,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: list_items(42))),
            Container(
              margin: EdgeInsets.all(13.0),
              child: Text(
                "Class 3",
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 35.0, backgroundColor: Colors.deepPurpleAccent),
              ),
            ),
            Container(
                height: 500.0,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: list_items(47))),
            Container(
              margin: EdgeInsets.all(13.0),
              child: Text(
                "Class 2",
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 35.0, backgroundColor: Colors.deepPurpleAccent),
              ),
            ),
            Container(
                height: 500.0,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: list_items_small(52))),
            Container(
              margin: EdgeInsets.all(13.0),
              child: Text(
                "Class 1",
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 35.0, backgroundColor: Colors.deepPurpleAccent),
              ),
            ),
            Container(
                height: 500.0,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: list_items_small(56))),
            Container(
                height: 100.0,
                child: ElevatedButton(
                  child: Text(
                    "Selection Done!!",
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 50.0),
                  ),
                  onPressed: () {
                    pressed = true;
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Second_Screen(value: val)));
                  },
                ))
          ],
        )));
  }

  List<Widget> list_items(int i) {
    return [
      Expanded(
          child: Column(children: <Widget>[
        Image.network(
            "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/10th/maths.png"),
        Row(children: [
          Checkbox(
              value: val[0 + i],
              onChanged: (newVal) {
                setState(() {
                  val[0 + i] = !val[0 + i];
                });
              }),
          Text(
            "Maths",
            textAlign: TextAlign.left,
            style: TextStyle(color: Colors.blue),
          )
        ])
      ])),
      Expanded(
          child: Column(children: <Widget>[
        Image.network(
            "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/10th/science.png"),
        Row(children: [
          Checkbox(
              value: val[1 + i],
              onChanged: (newVal) {
                setState(() {
                  val[1 + i] = !val[1 + i];
                });
              }),
          Text(
            "Science",
            textAlign: TextAlign.left,
            style: TextStyle(color: Colors.blue),
          )
        ])
      ])),
      Expanded(
          child: Column(children: <Widget>[
        Image.network(
            "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/10th/social-science.png"),
        Row(children: [
          Checkbox(
              value: val[2 + i],
              onChanged: (newVal) {
                setState(() {
                  val[2 + i] = !val[2 + i];
                });
              }),
          Text(
            "Social Studies",
            textAlign: TextAlign.left,
            style: TextStyle(color: Colors.blue),
          )
        ])
      ])),
      Expanded(
          child: Column(children: <Widget>[
        Image.network(
            "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/10th/hindi.png"),
        Row(children: [
          Checkbox(
              value: val[3 + i],
              onChanged: (newVal) {
                setState(() {
                  val[3 + i] = !val[3 + i];
                });
              }),
          Text(
            "Hindi",
            textAlign: TextAlign.left,
            style: TextStyle(color: Colors.blue),
          )
        ])
      ])),
      Expanded(
          child: Column(children: <Widget>[
        Image.network(
            "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/10th/english.png"),
        Row(children: [
          Checkbox(
              value: val[4 + i],
              onChanged: (newVal) {
                setState(() {
                  val[4 + i] = !val[4 + i];
                });
              }),
          Text(
            "English",
            textAlign: TextAlign.left,
            style: TextStyle(color: Colors.blue),
          )
        ])
      ]))
    ];
  }

  List<Widget> list_items_big(int i) {
    return [
      Expanded(
          child: Column(children: <Widget>[
        Image.network(
            "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/12th/maths.png"),
        Row(children: [
          Checkbox(
              value: val[0 + i],
              onChanged: (newVal) {
                setState(() {
                  val[0 + i] = !val[0 + i];
                });
              }),
          Text(
            "Maths",
            textAlign: TextAlign.left,
            style: TextStyle(color: Colors.blue),
          )
        ])
      ])),
      Expanded(
          child: Column(children: <Widget>[
        Image.network(
            "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/12th/physics.png"),
        Row(children: [
          Checkbox(
              value: val[1 + i],
              onChanged: (newVal) {
                setState(() {
                  val[1 + i] = !val[1 + i];
                });
              }),
          Text(
            "Physics",
            textAlign: TextAlign.left,
            style: TextStyle(color: Colors.blue),
          )
        ])
      ])),
      Expanded(
          child: Column(children: <Widget>[
        Image.network(
            "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/12th/chemistry.png"),
        Row(children: [
          Checkbox(
              value: val[2 + i],
              onChanged: (newVal) {
                setState(() {
                  val[2 + i] = !val[2 + i];
                });
              }),
          Text(
            "Chemistry",
            textAlign: TextAlign.left,
            style: TextStyle(color: Colors.blue),
          )
        ])
      ])),
      Expanded(
          child: Column(children: <Widget>[
        Image.network(
            "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/12th/biology.png"),
        Row(children: [
          Checkbox(
              value: val[3 + i],
              onChanged: (newVal) {
                setState(() {
                  val[3 + i] = !val[3 + i];
                });
              }),
          Text(
            "Biology",
            textAlign: TextAlign.left,
            style: TextStyle(color: Colors.blue),
          )
        ])
      ])),
      Expanded(
          child: Column(children: <Widget>[
        Image.network(
            "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/12th/english.png"),
        Row(children: [
          Checkbox(
              value: val[4 + i],
              onChanged: (newVal) {
                setState(() {
                  val[4 + i] = !val[4 + i];
                });
              }),
          Text(
            "English",
            textAlign: TextAlign.left,
            style: TextStyle(color: Colors.blue),
          )
        ])
      ])),
      Expanded(
          child: Column(children: <Widget>[
        Image.network(
            "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/12th/social-science.png"),
        Row(children: [
          Checkbox(
              value: val[5 + i],
              onChanged: (newVal) {
                setState(() {
                  val[5 + i] = !val[5 + i];
                });
              }),
          Text(
            "Social Studies",
            textAlign: TextAlign.left,
            style: TextStyle(color: Colors.blue),
          )
        ])
      ]))
    ];
  }

  List<Widget> list_items_small(int i) {
    return [
      Expanded(
          child: Column(children: <Widget>[
        Image.network(
            "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/1st/maths.png"),
        Row(children: [
          Checkbox(
              value: val[0 + i],
              onChanged: (newVal) {
                setState(() {
                  val[0 + i] = !val[0 + i];
                });
              }),
          Text(
            "Maths",
            textAlign: TextAlign.left,
            style: TextStyle(color: Colors.blue),
          )
        ])
      ])),
      Expanded(
          child: Column(children: <Widget>[
        Image.network(
            "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/1st/evs.png"),
        Row(children: [
          Checkbox(
              value: val[1 + i],
              onChanged: (newVal) {
                setState(() {
                  val[1 + i] = !val[1 + i];
                });
              }),
          Text(
            "Environmental Studies",
            textAlign: TextAlign.left,
            style: TextStyle(color: Colors.blue),
          )
        ])
      ])),
      Expanded(
          child: Column(children: <Widget>[
        Image.network(
            "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/1st/hindi.png"),
        Row(children: [
          Checkbox(
              value: val[2 + i],
              onChanged: (newVal) {
                setState(() {
                  val[2 + i] = !val[2 + i];
                });
              }),
          Text(
            "Hindi",
            textAlign: TextAlign.left,
            style: TextStyle(color: Colors.blue),
          )
        ])
      ])),
      Expanded(
          child: Column(children: <Widget>[
        Image.network(
            "https://the-hw-app.s3.ap-south-1.amazonaws.com/android/onboarding/subjects/1st/english.png"),
        Row(children: [
          Checkbox(
              value: val[3 + i],
              onChanged: (newVal) {
                setState(() {
                  val[3 + i] = !val[3 + i];
                });
              }),
          Text(
            "English",
            textAlign: TextAlign.left,
            style: TextStyle(color: Colors.blue),
          )
        ])
      ]))
    ];
  }
}
