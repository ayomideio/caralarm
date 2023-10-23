import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vehicleapp/bookings/menu.dart';
import 'package:vehicleapp/bookings/payment.dart';
import 'package:flutter_paypal/flutter_paypal.dart';

class OdererPersonalDetails extends StatefulWidget {
  final String vehicleYear;
  final String vehicleMake;
  final String vehicleModel;
  const OdererPersonalDetails(
      {super.key,
      required this.vehicleYear,
      required this.vehicleMake,
      required this.vehicleModel});

  @override
  State<OdererPersonalDetails> createState() => _OdererPersonalDetailsState();
}

class _OdererPersonalDetailsState extends State<OdererPersonalDetails> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  TextEditingController _fullName = TextEditingController();
  TextEditingController _emailAddress = TextEditingController();
  TextEditingController _contactNo = TextEditingController();
  TextEditingController _address = TextEditingController();
  TextEditingController _cityState = TextEditingController();
  TextEditingController _zipCode = TextEditingController();
  String orderPackage = "Delivery  150 USD";
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Color(0xffDFDFDF),
        body: SafeArea(
            child: Container(
          height: screenSize.height,
          width: screenSize.width,
          child: SingleChildScrollView(
              child: Column(
            children: [
              SizedBox(
                height: 56,
              ),
              Text(
                "Personal Details",
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 56,
              ),
              Container(
                width: screenSize.width / 1.1,
                height: 56,
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Color(0xff1D55C4), width: 3)),
                child: TextField(
                  controller: _fullName,
                  style: TextStyle(color: Color(0xff1D55C4)),
                  decoration: InputDecoration(
                      hintText: "     Full Name",
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                          color: Color(0xff1D55C4),
                          fontWeight: FontWeight.w600,
                          fontSize: 20)),
                ),
              ),
              SizedBox(
                height: screenSize.height / 40,
              ),
              Container(
                width: screenSize.width / 1.1,
                height: 56,
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Color(0xff1D55C4), width: 3)),
                child: TextField(
                  controller: _emailAddress,
                  style: TextStyle(color: Color(0xff1D55C4)),
                  decoration: InputDecoration(
                      hintText: "     Email Address",
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                          color: Color(0xff1D55C4),
                          fontWeight: FontWeight.w600,
                          fontSize: 20)),
                ),
              ),
              SizedBox(
                height: screenSize.height / 40,
              ),
              Container(
                width: screenSize.width / 1.1,
                height: 56,
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Color(0xff1D55C4), width: 3)),
                child: TextField(
                  controller: _contactNo,
                                   inputFormatters: [FilteringTextInputFormatter.allow(RegExp("[Z0-9]")),],
                  keyboardType: TextInputType.number,
                  style: TextStyle(color: Color(0xff1D55C4)),
                  decoration: InputDecoration(
                      hintText: "     Contact No.",
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                          color: Color(0xff1D55C4),
                          fontWeight: FontWeight.w600,
                          fontSize: 20)),
                ),
              ),
              SizedBox(
                height: screenSize.height / 40,
              ),
              Container(
                width: screenSize.width / 1.1,
                height: 56,
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Color(0xff1D55C4), width: 3)),
                child: TextField(
                  controller: _address,
                  style: TextStyle(color: Color(0xff1D55C4)),
                  decoration: InputDecoration(
                      hintText: "     Address",
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                          color: Color(0xff1D55C4),
                          fontWeight: FontWeight.w600,
                          fontSize: 20)),
                ),
              ),
              SizedBox(
                height: screenSize.height / 40,
              ),
              Container(
                width: screenSize.width / 1.1,
                height: 56,
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Color(0xff1D55C4), width: 3)),
                child: TextField(
                  controller: _cityState,
                  style: TextStyle(color: Color(0xff1D55C4)),
                  decoration: InputDecoration(
                      hintText: "     City, State",
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                          color: Color(0xff1D55C4),
                          fontWeight: FontWeight.w600,
                          fontSize: 20)),
                ),
              ),
              SizedBox(
                height: screenSize.height / 40,
              ),
              Container(
                width: screenSize.width / 1.1,
                height: 56,
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Color(0xff1D55C4), width: 3)),
                child: TextField(
                  controller: _zipCode,
                  style: TextStyle(color: Color(0xff1D55C4)),
                  decoration: InputDecoration(
                      hintText: "     Zip Code",
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                          color: Color(0xff1D55C4),
                          fontWeight: FontWeight.w600,
                          fontSize: 20)),
                ),
              ),
              SizedBox(
                height: screenSize.height / 40,
              ),
              Container(
                  width: screenSize.width / 1.1,
                  height: 56,
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: Color(0xff1D55C4), width: 3)),
                  child: DropdownButton<String>(
                      value: orderPackage,
                      items: [
                        
                        "Delivery  150 USD"
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                            value: value, child: Text(value));
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          orderPackage = newValue.toString();
                        });
                        // do something here
                      },
                      underline:
                          DropdownButtonHideUnderline(child: Container()))),
              
              
              SizedBox(
                height: screenSize.height / 40,
              ),
              Container(
                  width: screenSize.width / 2.2,
                  height: screenSize.height / 15,
                  decoration: BoxDecoration(
                      color: Color(0xff1D55C4),
                      borderRadius: BorderRadius.circular(10.0)),
                  child: TextButton(
                      onPressed: () {
                        if (_fullName.text.isNotEmpty &&
                            _emailAddress.text.isNotEmpty &&
                            _contactNo.text.isNotEmpty &&
                            _address.text.isNotEmpty &&
                            _cityState.text.isNotEmpty &&
                            _zipCode.text.isNotEmpty) {
                          var fname = _fullName.text;

                     
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) => UsePaypal(
                                  sandboxMode: true,
                                  clientId:
                                      "AW1TdvpSGbIM5iP4HJNI5TyTmwpY9Gv9dYw8_8yW5lYIbCqf326vrkrp0ce9TAqjEGMHiV3OqJM_aRT0",
                                  secretKey:
                                      "EHHtTDjnmTZATYBPiGzZC_AZUfMpMAzj2VZUeqlFUrRJA_C0pQNCxDccB5qoRQSEdcOnnKQhycuOWdP9",
                                  returnURL: "http://catpatrol911.com",
                                  cancelURL: "http://catpatrol911.com",
                                  transactions: [
                                    {
                                      "amount": {
                                        "total": orderPackage=='Delivery & Installation 200 USD'? '200.00':'150.0',
                                        "currency": "USD",
                                        "details": {
                                          "subtotal": orderPackage=='Delivery & Installation 200 USD'? '200.00':'150.0',
                                          "shipping": '0',
                                          "shipping_discount": 0
                                        }
                                      },
                                      "description":
                                         orderPackage,
                                      // "payment_options": {
                                      //   "allowed_payment_method":
                                      //       "INSTANT_FUNDING_SOURCE"
                                      // },
                                      "item_list": {
                                        "items": [
                                          {
                                            "name": "Vehicle Catalytic Alarm",
                                            "quantity": 1,
                                            "price": orderPackage=='Delivery & Installation 200 USD'? '200.00':'150.0',
                                            "currency": "USD"
                                          }
                                        ],

                                        // shipping address is not required though
                                        "shipping_address": {
                                          "recipient_name": "$fname",
                                          "line1": _address.text,
                                          "line2": "",
                                          "city": _cityState.text,
                                          "country_code": "US",
                                          "postal_code": _zipCode.text,
                                          "phone":"+1"+ _contactNo.text,
                                          "state": _cityState.text
                                        },
                                      }
                                    }
                                  ],
                                  note:
                                      "Contact us for any questions on your order.",
                                  onSuccess: (Map params) async {
                                    print("onSuccess: $params");
                                  },
                                  onError: (error) {
                                    print("onError: $error");
                                  },
                                  onCancel: (params) {
                                    print('cancelled: $params');
                                  }),
                            ),
                          );
                        }
                      },
                      child: Text(
                        "Next",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ))),
            ],
          )),
        )));
  }
}
