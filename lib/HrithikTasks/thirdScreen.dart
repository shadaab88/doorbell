import 'package:flutter/material.dart';
import 'package:image_card_list/image_card_list.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:titled_navigation_bar/titled_navigation_bar.dart';

class ThirdScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Bottom Navigation Bar Example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentindex = 0;
  final tabs = [
    Center(child: Text('First Page')),
    Center(child: Text('Second Page')),
    Center(
        child: Text("Hello")
    ),
    Center(child: Text('Fourth Page')),
    Center(child: Text('Fifth Page')),
  ];
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: SafeArea(
          child:
          Center(
            child:
            Column(
              children: <Widget>[
                Container(child: ImageCardList(
                  padding: EdgeInsets.all(50.0),
                  width: 50.0,
                  height: 80.0,
                  map: {
                    "SPORTS": "asset/soccer.png",
                    "HISTORY": "asset/crown.png",
                    "SCIENCE": "asset/magnet.png",
                    "MOVIES": "asset/popcorn.png",
                  },
                  displayNameTag: true,
                )),
                tabs[_currentindex],
                Expanded(
                  flex: 1,
                  child: PageView(children: <Widget>[
                    Icon(MdiIcons.zodiacCancer),
                    Icon(MdiIcons.zodiacAquarius),
                    Icon(MdiIcons.zodiacScorpio),
                  ]),
                ),
                // PageView(
                //   children:[
                //     Container(
                //       color: Colors.red,
                //       child: Icon(MdiIcons.accountStarOutline),
                //       ),
                //     Container(
                //       color: Colors.greenAccent,
                //       child: Icon(MdiIcons.deathStar),
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: TitledBottomNavigationBar(
            currentIndex: _currentindex,
            items: [
              TitledNavigationBarItem(
                  icon: Icons.copyright, title: Text('Special Pass')),
              TitledNavigationBarItem(
                  icon: MdiIcons.abjadHebrew, title: Text('Leaderboard')),
              TitledNavigationBarItem(
                  icon: MdiIcons.homeHeart, title: Text('Home')),
              TitledNavigationBarItem(
                  icon: Icons.add_to_home_screen, title: Text('Hello')),
              TitledNavigationBarItem(
                  icon: Icons.add_to_home_screen, title: Text('Hello')),
            ],
            reverse: true,
            onTap: (index) {
              setState(() {
                _currentindex = index;
              });
            }) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}