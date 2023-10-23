import 'package:flutter/material.dart';
import 'package:vehicleapp/bookings/appointment.dart';
import 'package:vehicleapp/bookings/order.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({super.key});

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffDFDFDF),
      body: SafeArea(
        child: Container(
          height: screenSize.height,
          width: screenSize.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/vectors/mainmenu.png"),
              SizedBox(
                height: screenSize.height / 20,
              ),
              Container(
                  width: screenSize.width / 1.1,
                  height: screenSize.height / 15,
                  decoration: BoxDecoration(
                      color: Color(0xff1D55C4),
                      borderRadius: BorderRadius.circular(10.0)),
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext build) =>
                                    Appointment()));
                      },
                      child: Text(
                        "Book An Appointment",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ))),
              SizedBox(
                height: screenSize.height / 30,
              ),
              Container(
                width: screenSize.width / 1.1,
                height: screenSize.height / 15,
                decoration: BoxDecoration(
                    color: Color(0xff1D55C4),
                    borderRadius: BorderRadius.circular(10.0)),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext build) => OrderCatalytic(),
                      ),
                    );
                  },
                  child: Text(
                    "Order catalytic converter Alarm",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
