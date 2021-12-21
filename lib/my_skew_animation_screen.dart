import 'package:flutter/material.dart';

class MySkewAnimationScreen extends StatefulWidget {
  @override
  _MySkewAnimationScreenState createState() => _MySkewAnimationScreenState();
}

class _MySkewAnimationScreenState extends State<MySkewAnimationScreen> with SingleTickerProviderStateMixin{

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
        color: Colors.redAccent,
        alignment: Alignment.center,
        child: AnimatedBuilder(
          animation: myAnimationController,
          child: Container(
            width: 300,
            height: 300,
            child: Image.asset('images/codingwithdhrumil.png'),
          ),
          builder: (context, widget) => Transform(
            transform: Matrix4.skewY(myAnimationController.value * 0.6),
            child: widget,
          ),
        ),
    );
  }
}
