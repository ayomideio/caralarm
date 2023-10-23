import 'package:flutter/material.dart';
import 'package:vehicleapp/bookings/menu.dart';
import 'package:vehicleapp/intro/intro3.dart';
import 'package:vehicleapp/intro/intro3.dart';

class Intro3 extends StatefulWidget {
  const Intro3({super.key});

  @override
  State<Intro3> createState() => _Intro3State();
}

class _Intro3State extends State<Intro3> {
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
            "Easy & Secure",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          Text(
            "PayPal Payment",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
         
          SizedBox(
            height: screenSize.height / 10,
          ),
          Image.asset("assets/vectors/intro3.png"),
          SizedBox(
            height: screenSize.height / 6,
          ),
          Container(
              color: Color(0xff1D55C4),
              width: screenSize.width / 3,
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext build) => MainMenu()));
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
