import 'package:flutter/material.dart';
import 'package:vehicleapp/intro/intro2.dart';
import 'package:vehicleapp/intro/intro3.dart';

class Intro2 extends StatefulWidget {
  const Intro2({super.key});

  @override
  State<Intro2> createState() => _Intro2State();
}

class _Intro2State extends State<Intro2> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffDFDFDF),
      body: SafeArea(
          child: Container(
        height: screenSize.height,
        width: screenSize.width,
        child: Column(children: [
          SizedBox(
            height: screenSize.height / 30,
          ),
          Text(
            "Order Now!",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            "We will ship it to your doorstep...",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: screenSize.height / 20,
          ),
          Image.asset("assets/vectors/intro2.png"),
          SizedBox(
            height: screenSize.height / 20,
          ),
          Container(
              color: Color(0xff1D55C4),
              width: screenSize.width / 3,
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext build) => Intro3()));
                  },
                  child: Text(
                    "Next",
                    style: TextStyle(color: Colors.white),
                  ))),
        ]),
      )),
    );
  }
}
