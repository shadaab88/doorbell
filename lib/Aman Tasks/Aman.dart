import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Lists.dart';



class Aman extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          accentColor: Colors.deepOrange, primaryColor: Colors.deepOrange),
      darkTheme: ThemeData(primaryColor: Colors.black,
          primaryColorBrightness: Brightness.dark,
          primaryColorLight: Colors.black,
          brightness: Brightness.dark,
          primaryColorDark: Colors.black,
          indicatorColor: Colors.white,
          ),
      themeMode: ThemeMode.dark,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final GlobalKey<ScaffoldState> parentScaffoldKey;

  MyHomePage({Key key, this.title, this.parentScaffoldKey}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.deepOrange,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.filter_alt_sharp),
            color: Colors.deepOrange,
          )
        ],
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.deepOrange),
          onPressed: () {
           Navigator.of(context)
              .pushReplacementNamed('/Pages', arguments: 2);}
        ),
        title: Text(
          'All Restaurant',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,

        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //SizedBox(width: 10),

                  Container(
                    child: FlatButton(
                        //textColor: Colors.white,
                        color: Colors.deepOrange,
                        child: Text('All'),
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0))),
                  ),
                  SizedBox(width: 10),
                  Container(
                    child: FlatButton(
                        //textColor: Colors.white,
                        color: Colors.transparent,
                        highlightColor: Colors.deepOrange,
                        child: Text('  Delivery Time  '),
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Colors.deepOrange,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(30.0))),
                  ),
                  SizedBox(width: 10),
                  Container(
                    child: FlatButton(
                        //textColor: Colors.white,
                        color: Colors.transparent,
                        highlightColor: Colors.deepOrange,
                        child: Text('  Top Offer  '),
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Colors.deepOrange,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(30.0))),
                  ),
                  SizedBox(width: 10),
                  Container(
                    child: FlatButton(
                        //textColor: Colors.white,
                        color: Colors.transparent,
                        highlightColor: Colors.deepOrange,
                        child: Text('  Top Offer  '),
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Colors.deepOrange,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(30.0))),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                //physics: BouncingScrollPhysics(),
                itemCount: rname.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: (){
                      print(rname.length);
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height*0.137,
                      //width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.all(7),
                      child: Row(

                        //mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(7),
                            child: Image.asset(
                              image[index],
                              width:106,
                              height: 106,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            //height: MediaQuery.of(context).size.height*0.137,
                            width: MediaQuery.of(context).size.width-160,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(rname[index],
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                                Text(category[index],
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                    )),
                                Row(
                                  children: [
                                    Icon(Icons.delivery_dining,
                                        color: Colors.deepOrange),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Text(
                                      dtime[index],
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.local_offer_outlined,
                                        color: Colors.deepOrange),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Text(off[index])
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                              child: Stack(

                                alignment: Alignment.center,
                                children: [
                                  Icon(Icons.star, color: Colors.deepOrange,size: 30,),
                                  Text('0',style: (TextStyle(fontSize: 12)),),
                                ],
                              ))
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
