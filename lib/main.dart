import "package:flutter/material.dart";
import "BottomNavi.dart";
import 'package:flutter/services.dart';
import 'dart:async';

void main() async{
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      initialRoute: '/',
      theme:new ThemeData(
          brightness:Brightness.light,
          backgroundColor: Colors.white),
      home:new SplashScreen(),
      routes:{
        '/home':(BuildContext context)=>new homeBottomNavigation(),//new Index()
      },
    );
  }
}

class SplashScreen extends StatefulWidget{
  @override
  _SplashScreenState createState()=>new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{
  startTimer() async{
    var _duration=new Duration(seconds:1);
    return new Timer(_duration,navigationPage);
  }
  void navigationPage(){
    setState(() {
      Navigator.of(context).pushReplacementNamed('/home');
    });
  }
  @override
  void initState(){
    super.initState();
    startTimer();
  }
  @override
  Widget build(BuildContext context){
    return new Scaffold(
        body:ConstrainedBox(child:
        new Image.asset('images/welcomepage.png',fit:BoxFit.cover),
          constraints:new BoxConstraints.expand(),
        )
    );
  }
}

