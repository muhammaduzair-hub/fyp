import 'dart:async';

import 'package:flutter/material.dart';
import 'package:reflexology/pages/home_page.dart';
import 'package:reflexology/utils/color.dart';



class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    Timer(const Duration(milliseconds: 2000), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => MyHomePagee()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [color1, color2,color3],
              end: Alignment.bottomCenter,
              begin: Alignment.topCenter),
        ),
        child: Center(
         // child: Text('R E F L E X O L O G Y' ),
          
          child: Image.asset("assets/slogo.png",height: 250,),
          
        ),
        
        
      ),
      
    );
  }
}


