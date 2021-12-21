import 'package:flutter/material.dart';

class MyScaleAnimationScreen extends StatefulWidget {
  @override
  _MyScaleAnimationScreenState createState() => _MyScaleAnimationScreenState();
}

class _MyScaleAnimationScreenState extends State<MyScaleAnimationScreen> with SingleTickerProviderStateMixin{

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
      alignment: Alignment.topCenter,
      color: Colors.orangeAccent,
      child: AnimatedBuilder(
        animation: myAnimationController,
        child: Container(
          child: Image.asset('images/codingwithdhrumil.png'),
        ),
        builder: (context, widget) => Transform.scale(
          scale: myAnimationController.value * 0.8,
          child: widget,
        ),
      ),
    );
  }
}
