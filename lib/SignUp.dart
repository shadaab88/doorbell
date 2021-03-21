import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:country_pickers/country_pickers.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String dropdownValue = 'Nagpur';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
      child: Column(children: [
          // Image(
          //   image: AssetImage('resources/doorbell_pic.jpg'),
          // ),
          Stack(
            children: [
              Image(
                image: AssetImage('assets/img/aa.jpg'),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 300, 0, 0),
                child: Card(
                  elevation: 5,
                  shape: Border(
                    bottom: BorderSide(color: Colors.deepOrange, width: 5),
                  ),
                  color: Colors.black,
                  margin: EdgeInsets.all(20.0),
                  child: Column(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Text(
                          "REGISTER",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),//Register Card
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: TextFormField(
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.accessibility_new_rounded),
                              border: InputBorder.none,
                              hintText: 'Name'),
                        ),//Fetching Name
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: TextFormField(
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.mail_outline_rounded),
                              border: InputBorder.none,
                              hintText: 'Email'),
                        ),//Fetching email
                      ),
                      Container(
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: TextFormField(
                            decoration: InputDecoration(
                                suffixIcon: Icon(Icons.call),
                                border: InputBorder.none,
                                hintText: 'Mobile Number'),
                          )//Fetching Mobile Number
                      ),
                      Container(
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              DropdownButton<String>(
                                value: dropdownValue,
                                icon: Icon(Icons.arrow_drop_down),
                                iconSize: 24,
                                elevation: 16,
                                style: TextStyle(color: Colors.white),
                                underline: Container(
                                  height: 1,
                                  color: Colors.grey,
                                ),
                                onChanged: (String newValue) {
                                  setState(() {
                                    dropdownValue = newValue;
                                  });
                                },
                                items: <String>[
                                  'Nagpur',
                                  'Mumbai',
                                  'Delhi',
                                  'Pune'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),//City DropDown
                            ],
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Referral Code?"),
                          SizedBox(width: 5),
                          InkWell(
                              onTap: () {},
                              child: Text(
                                'Apply',
                                style: TextStyle(
                                    color: Colors.deepOrange,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline),
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(162, 635, 100, 100),
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.deepOrange)),
                  color: Colors.deepOrange,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(8.0),
                  onPressed: () {
                    //Navigator.pop(context);
                  },
                  child: Text(
                    "go".toUpperCase(),
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ),
              //go buttn
            ],
          ),
      ]),
    ),
        ));
  }
}
