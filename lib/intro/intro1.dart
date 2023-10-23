import 'package:flutter/material.dart';
import 'package:vehicleapp/intro/intro2.dart';

class Intro1 extends StatefulWidget {
  const Intro1({super.key});

  @override
  State<Intro1> createState() => _Intro1State();
}

class _Intro1State extends State<Intro1> {
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
            "Book an Appointment!",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            "in any Where, at any Time...",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: screenSize.height / 20,
          ),
          Image.asset("assets/vectors/intro1.png"),
          SizedBox(
            height: screenSize.height / 7,
          ),
          Container(
              color: Color(0xff1D55C4),
              width: screenSize.width / 3,
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext build) => Intro2()));
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
