import 'package:flutter/material.dart';
import 'jatinlist.dart';




void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Page1(),
    );
  }
}

class Page1 extends StatefulWidget {
 
  final GlobalKey<ScaffoldState> parentScaffoldKey;

  Page1({Key key, this.parentScaffoldKey}) : super(key: key);
 
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DoorBell'),
        backgroundColor: Color(0xff8e3c00),
      ),
      body: Container(
        color: Color(0xff292b2c),
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              color: Color(0xff8e3c00),
            ),
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  decoration: BoxDecoration(
                    color: Color(0xff8e3c00),
                    borderRadius: new BorderRadius.vertical(
                        bottom: new Radius.elliptical(
                            MediaQuery.of(context).size.width, 100.0)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: // hero image
                      Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                        offset: const Offset(
                          5.0,
                          5.0,
                        ),
                        blurRadius: 20.0,
                        spreadRadius: 5.0,
                      ),
                    ]),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25.0),
                      child: Image.asset(
                        'assets/3.jpg',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Flexible(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 175,
                      crossAxisSpacing: 0,
                      mainAxisSpacing: 7),
                  itemCount: List1.imageList.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(List1.imageList[index]),
                          radius: 40,
                        ),
                        //  Container(
                        //    width: 50.0,
                        //    child: Image.asset(List1.imageList[index])),
                        Text(
                          List1.stringList[index],
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
