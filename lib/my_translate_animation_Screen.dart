import 'package:flutter/material.dart';

class MyTranslateAnimationScreen extends StatefulWidget {
  @override
  _MyTranslateAnimationScreenState createState() => _MyTranslateAnimationScreenState();
}

class _MyTranslateAnimationScreenState extends State<MyTranslateAnimationScreen> with SingleTickerProviderStateMixin {
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
      color: Colors.deepOrangeAccent,
      child: AnimatedBuilder(
        animation: myAnimationController,
        child: Container(
          child: Image.asset('images/codingwithdhrumil.png'),
        ),
        builder: (context, widget) => Transform.translate(
          offset: Offset(myAnimationController.value * 60, myAnimationController.value * 60),
          child: widget,
        ),
      ),
    );
  }
}
