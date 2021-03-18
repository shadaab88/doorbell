import 'package:flutter/material.dart';

import 'Aman.dart';
import 'Aman1.dart';


class Ghar extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Ghar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlatButton(
                color: Colors.deepOrange,
                onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context) =>Aman()));},
                child: Text("Restaurant Page"),
              ),FlatButton(
                color: Colors.deepOrange,
                onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context) =>MeraApp()));},
                child: Text("Login/SignUp"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
