import 'package:flutter/material.dart';
import 'package:fluttertransformanimsample/my_rotate_animation_Screen.dart';
import 'package:fluttertransformanimsample/my_scale_animation_screen.dart';
import 'package:fluttertransformanimsample/my_skew_animation_screen.dart';
import 'package:fluttertransformanimsample/my_translate_animation_Screen.dart';

class MyHomeScreen extends StatefulWidget {
  @override
  _MyHomeScreenState createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Transform Widget Example')),
      body: Container(
        margin: EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ElevatedButton(
              child: Text('Rotate',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              style: ElevatedButton.styleFrom(
                  primary: Colors.pinkAccent,
                  padding: EdgeInsets.all(15)
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyRotateAnimationScreen()));
              },
            ),
            SizedBox(height: 30),
            ElevatedButton(
              child: Text('Translate',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              style: ElevatedButton.styleFrom(
                  primary: Colors.deepOrangeAccent,
                  padding: EdgeInsets.all(15)
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyTranslateAnimationScreen()));
              },
            ),
            SizedBox(height: 30),
            ElevatedButton(
                child: Text('Scale',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                style: ElevatedButton.styleFrom(
                  primary: Colors.orangeAccent,
                  padding: EdgeInsets.all(15),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyScaleAnimationScreen()));
                }),
            SizedBox(height: 30),
            ElevatedButton(
              child: Text('Skew',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              style: ElevatedButton.styleFrom(
                primary: Colors.redAccent,
                padding: EdgeInsets.all(15),
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => MySkewAnimationScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
