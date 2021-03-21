import 'firstScreen.dart';
import 'secondScreen.dart';
import 'thirdScreen.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(MyHome());
}

class MyHome extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner : false,
      theme: ThemeData(

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomeScreen(title: 'NON VIOLENT ZOMATO'),
    );
  }
}

class MyHomeScreen extends StatefulWidget {
  MyHomeScreen({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomeScreenState createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          //title: widget.title.text.red600.make()
        ),
        body:
            // Center is a layout widget. It takes a single child and positions it
            // in the middle of the parent.
            Center(
                child: Column(
                    mainAxisAlignment : MainAxisAlignment.start,
                    // Column is also a layout widget. It takes a list of children and
                    // arranges them vertically. By default, it sizes itself to fit its
                    // children horizontally, and tries to be as tall as its parent.
                    //
                    // Invoke "debug painting" (press "p" in the console, choose the
                    // "Toggle Debug Paint" action from the Flutter Inspector in Android
                    // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
                    // to see the wireframe for each widget.
                    //
                    // Column has various properties to control how it sizes itself and
                    // how it positions its children. Here we use mainAxisAlignment to
                    // center the children vertically; the main axis here is the vertical
                    // axis because Columns are vertical (the cross axis would be
                    // horizontal).
                    children: <Widget>[

                      Row(
                        children: [
                          Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLgp1SDcwvsqUfp1l1vDcjKjRqllz8inX4NA&usqp=CAU",height: 100,width: 100,),
                          Image.network("https://img.theweek.in/content/dam/week/news/india/images/2021/3/10/Hitesha-Chandranee-zomato-instagram.jpg",height: 200,width: 200,),
                        ],
                      ),
                      "Non Violent Zomato".text.xl2.extraBold.orange300.make(),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyFirstPage()),
                      );
                    },
                    child: "Go to First Page".text.white.make(),
                  ),
                  20.heightBox,
                  ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MySecondScreen()),
                    );
                  },
                    child: "Go to Second Page".text.white.make(),
                  ),
                      20.heightBox,
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ThirdScreen()),
                          );
                        },
                        child: "Go to Third Page".text.white.make(),
                      )
            ]))

    );
  }
}
