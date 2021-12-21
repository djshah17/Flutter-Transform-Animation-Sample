import 'package:flutter/material.dart';

class MyRotateAnimationScreen extends StatefulWidget {
  @override
  _MyRotateAnimationScreenState createState() => _MyRotateAnimationScreenState();
}

class _MyRotateAnimationScreenState extends State<MyRotateAnimationScreen> with SingleTickerProviderStateMixin {

  AnimationController myAnimationController;

  @override
  void initState() {
    super.initState();
    myAnimationController = AnimationController(duration: Duration(seconds: 5), vsync: this);
    myAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pinkAccent,
      child: AnimatedBuilder(
        animation: myAnimationController,
        child: Container(
          child: Image.asset('images/codingwithdhrumil.png'),
        ),
        builder: (context, widget) => Transform.rotate(
          angle: myAnimationController.value * 5.5,
          child: widget,
        ),
      ),
    );
  }
}
