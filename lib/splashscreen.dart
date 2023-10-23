import 'dart:async';

import 'package:flutter/material.dart';
import 'package:vehicleapp/intro/intro1.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
   Timer(Duration(seconds: 5),(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext buildContext)=>Intro1()));
   });

 
    
  }
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.height,
      width: screenSize.width,
      color: Colors.white,
      child: 
      Column(children: [
       
    Align(
      alignment: Alignment.topRight,
      child:Image.asset("assets/vectors/intersect1.png")
       ,
    )  ,
    Align(
      alignment: Alignment.center,
      child:Image.asset("assets/vectors/logo.png")
       ,
    ) ,
    SizedBox(
      height: screenSize.height/20,
    ),
    
      ]),
    );
  }
}
