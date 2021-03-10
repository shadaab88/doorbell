import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

import '../../generated/l10n.dart';
import '../controllers/user_controller.dart';
import '../elements/BlockButtonWidget.dart';
import '../helpers/app_config.dart' as config;
import '../helpers/helper.dart';

class SignUpWidget extends StatefulWidget {
  @override
  _SignUpWidgetState createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends StateMVC<SignUpWidget> {
  UserController _con;

  _SignUpWidgetState() : super(UserController()) {
    _con = controller;
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: Helper.of(context).onWillPop,
      child: Scaffold(
        backgroundColor: Colors.black38,
        key: _con.scaffoldKey,
        resizeToAvoidBottomPadding: false,
        appBar:AppBar(
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          backgroundColor: Color(0xff8e3c00),
          title:
          Text('Sign Up',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        ),
        body: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: <Widget>[
            // Positioned(
            //   top: 0,
            //   // child: Container(
            //   //   width: config.App(context).appWidth(100),
            //   //   height: config.App(context).appHeight(29.5),
            //   //   decoration: BoxDecoration(color: Theme.of(context).accentColor),
            //   // ),
            // ),
            // Positioned(
            //   top: config.App(context).appHeight(29.5) - 120,
            //   child: Container(
            //     width: config.App(context).appWidth(84),
            //     height: config.App(context).appHeight(29.5),
            //     child: Text(
            //       S.of(context).lets_start_with_register,
            //       style: Theme.of(context).textTheme.headline2.merge(TextStyle(color: Theme.of(context).primaryColor)),
            //     ),
            //   ),
            // ),
//             Positioned(
//               // top: config.App(context).appHeight(29.5) - 50,
// //               child: Container(
// //                 decoration: BoxDecoration(color: Theme.of(context).primaryColor, borderRadius: BorderRadius.all(Radius.circular(10)), boxShadow: [
// //                   BoxShadow(
// //                     blurRadius: 50,
// //                     color: Theme.of(context).hintColor.withOpacity(0.2),
// //                   )
// //                 ]),
// //                 margin: EdgeInsets.symmetric(
// //                   horizontal: 20,
// //                 ),
// //                 padding: EdgeInsets.symmetric(vertical: 50, horizontal: 27),
// //                 width: config.App(context).appWidth(88),
// // //              height: config.App(context).appHeight(55),
// //                 child:
// //               ),
//             ),
            Form(
              key: _con.loginFormKey,
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(

                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 50),
                      TextFormField(
                      maxLength: 50,
                      keyboardType: TextInputType.emailAddress,
                      onSaved: (input) => _con.user.email = input,
                      validator: (input) => !input.contains('@') ? S.of(context).should_be_a_valid_email : null,
                      decoration: InputDecoration(
                        //labelText: S.of(context).email,
                        //labelStyle: TextStyle(color: Theme.of(context).accentColor),
                        contentPadding: EdgeInsets.all(12),
                        hintText: 'Your Email Address(Optional)',
                        hintStyle: TextStyle(color: Theme.of(context).focusColor.withOpacity(0.7)),
                        //prefixIcon: Icon(Icons.alternate_email, color: Theme.of(context).accentColor),
                        //border: OutlineInputBorder(borderSide: BorderSide(color: Theme.of(context).focusColor.withOpacity(0.2))),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Theme.of(context).focusColor.withOpacity(0.5))),
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Theme.of(context).focusColor.withOpacity(0.2))),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Flexible(
                            child:
                            TextField(
                              keyboardType: TextInputType.text,
                              // onSaved: (input) => _con.user.name = input,
                              // validator: (input) => input.length < 3 ? S.of(context).should_be_more_than_3_letters : null,
                              decoration: InputDecoration(
                                labelText: S.of(context).first_name,
                                //labelStyle: TextStyle(color: Theme.of(context).accentColor),
                                contentPadding: EdgeInsets.all(12),
                                hintText: S.of(context).john_doe,
                                hintStyle: TextStyle(color: Theme.of(context).focusColor.withOpacity(0.7)),
                               // prefixIcon: Icon(Icons.person_outline, color: Theme.of(context).accentColor),
                               // border: OutlineInputBorder(borderSide: BorderSide(color: Theme.of(context).focusColor.withOpacity(0.2))),
                                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Theme.of(context).focusColor.withOpacity(0.5))),
                                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Theme.of(context).focusColor.withOpacity(0.2))),
                              ),
                            ),
                          ),
                          SizedBox(width: 5),
                          Flexible(
                            child: TextField(
                              keyboardType: TextInputType.text,
                              // onSaved: (input) => _con.user.name = input,
                              // validator: (input) => input.length < 3 ? S.of(context).should_be_more_than_3_letters : null,
                              decoration: InputDecoration(
                            labelText: S.of(context).last_name,
                            //labelStyle: TextStyle(color: Theme.of(context).accentColor),
                            contentPadding: EdgeInsets.all(12),
                            hintText: S.of(context).john_doe,
                            hintStyle: TextStyle(color: Theme.of(context).focusColor.withOpacity(0.7)),
                            //prefixIcon: Icon(Icons.person_outline, color: Theme.of(context).accentColor),
                           // border: OutlineInputBorder(borderSide: BorderSide(color: Theme.of(context).focusColor.withOpacity(0.2))),
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Theme.of(context).focusColor.withOpacity(0.5))),
                            enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Theme.of(context).focusColor.withOpacity(0.2))),
                    ),
                  ),
                          ),
                        ],
                      ),
                    SizedBox(height: 20),
                    TextFormField(
                      maxLength: 50,
                      keyboardType: TextInputType.emailAddress,
                      onSaved: (input) => _con.user.email = input,
                      validator: (input) => !input.contains('@') ? S.of(context).should_be_a_valid_email : null,
                      decoration: InputDecoration(
                       // labelText: S.of(context).email,
                       // labelStyle: TextStyle(color: Theme.of(context).accentColor),
                        contentPadding: EdgeInsets.all(12),
                        hintText: 'Mobile Number',
                        hintStyle: TextStyle(color: Theme.of(context).focusColor.withOpacity(0.7)),
                        //prefixIcon: Icon(Icons.alternate_email, color: Theme.of(context).accentColor),
                        //border: OutlineInputBorder(borderSide: BorderSide(color: Theme.of(context).focusColor.withOpacity(0.2))),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Theme.of(context).focusColor.withOpacity(0.5))),
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Theme.of(context).focusColor.withOpacity(0.2))),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      maxLength: 50,
                      keyboardType: TextInputType.emailAddress,
                      onSaved: (input) => _con.user.email = input,
                      validator: (input) => !input.contains('@') ? S.of(context).should_be_a_valid_email : null,
                      decoration: InputDecoration(
                        //labelText: S.of(context).email,
                        //labelStyle: TextStyle(color: Theme.of(context).accentColor),
                        contentPadding: EdgeInsets.all(12),
                        hintText: 'Date of Birth',
                        hintStyle: TextStyle(color: Theme.of(context).focusColor.withOpacity(0.7)),
                        //prefixIcon: Icon(Icons.alternate_email, color: Theme.of(context).accentColor),
                        //border: OutlineInputBorder(borderSide: BorderSide(color: Theme.of(context).focusColor.withOpacity(0.2))),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Theme.of(context).focusColor.withOpacity(0.5))),
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Theme.of(context).focusColor.withOpacity(0.2))),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      maxLength: 50,
                      obscureText: _con.hidePassword,
                      onSaved: (input) => _con.user.password = input,
                      validator: (input) => input.length < 6 ? S.of(context).should_be_more_than_6_letters : null,
                      decoration: InputDecoration(
                        labelText: S.of(context).password,
                        labelStyle: TextStyle(color: Colors.grey),
                        contentPadding: EdgeInsets.all(12),
                        hintText: '••••••••••••',
                        hintStyle: TextStyle(color: Theme.of(context).focusColor.withOpacity(0.7)),
                       // prefixIcon: Icon(Icons.lock_outline, color: Theme.of(context).accentColor),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _con.hidePassword = !_con.hidePassword;
                            });
                          },
                          color: Theme.of(context).focusColor,
                          icon: Icon(_con.hidePassword ? Icons.visibility : Icons.visibility_off),
                        ),
                        border: OutlineInputBorder(borderSide: BorderSide(color: Theme.of(context).focusColor.withOpacity(0.2))),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Theme.of(context).focusColor.withOpacity(0.5))),
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Theme.of(context).focusColor.withOpacity(0.2))),
                      ),
                    ),
                    SizedBox(height: 20),
                        FlatButton(
                          height: 60,
                          child: Text(
                            S.of(context).register,
                            style: TextStyle(color: Theme.of(context).primaryColor),
                          ),
                          color: Colors.grey,
                          onPressed: () {
                            _con.register();
                          },
                        ),
                    SizedBox(height: 25),
                    FlatButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/Login');
                      },
                      textColor: Theme.of(context).hintColor,
                      child: Text(S.of(context).i_have_account_back_to_login),
                    ),
//                      FlatButton(
//                        onPressed: () {
//                          Navigator.of(context).pushNamed('/MobileVerification');
//                        },
//                        padding: EdgeInsets.symmetric(vertical: 14),
//                        color: Theme.of(context).accentColor.withOpacity(0.1),
//                        shape: StadiumBorder(),
//                        child: Text(
//                          'Register with Google',
//                          textAlign: TextAlign.start,
//                          style: TextStyle(
//                            color: Theme.of(context).accentColor,
//                          ),
//                        ),
//                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
