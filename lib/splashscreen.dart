import 'package:Quotter/main.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _iconAnimationController;
  CurvedAnimation _iconAnimation;

  void handleTimeOut() {
    Navigator.of(context).pushReplacement(new MaterialPageRoute(
        builder: (BuildContext context) => new MainPage()));
  }

  startTimeout() async {
    var duration = const Duration(seconds: 5);
    return new Timer(duration, handleTimeOut);
  }

  @override
  void initState() {
    super.initState();
    _iconAnimationController = AnimationController(
        vsync: this, duration: new Duration(milliseconds: 2200));
    _iconAnimation = new CurvedAnimation(
        parent: _iconAnimationController, curve: Curves.easeIn);
    _iconAnimation.addListener(() => this.setState(() {}));
    _iconAnimationController.forward();
    startTimeout();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Color(0xFF183D5D)
              // #858789
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 100,
                      ),
                      CircleAvatar(
                        backgroundImage:
                            NetworkImage("https://i.imgur.com/sfzRgBt.png"),
                        backgroundColor: Colors.red,
                        radius: 80.0,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Quotter",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 35.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(backgroundColor: Colors.red),
                    Padding(padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 15.0)),
                    Text(""
                        // "  CREATED BY\nYou're name",
                        // style: TextStyle(
                        //     color: Colors.white,
                        //     fontSize: 15.0,
                        //     fontWeight: FontWeight.bold),
                        ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
