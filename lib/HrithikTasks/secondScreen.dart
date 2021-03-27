import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:velocity_x/velocity_x.dart';
import 'variables.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          accentColor: Colors.deepOrange, primaryColor: Colors.deepOrange),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: ThemeMode.dark,
      home: MySecondScreen(),
    );
  }
}

class MySecondScreen extends StatefulWidget {
  final GlobalKey<ScaffoldState> parentScaffoldKey;
  MySecondScreen({Key key, this.title, this.parentScaffoldKey}) : super(key: key);
  final String title;
  @override
  _MySecondScreenState createState() => _MySecondScreenState();
}

class _MySecondScreenState extends State<MySecondScreen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            highlightColor: Colors.deepOrange,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.filter_alt_sharp),
            highlightColor: Colors.deepOrange,
          )
        ],
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'All Restaurants',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            20.heightBox,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    20.widthBox,
                    Container(
                      child: MaterialButton(
                          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                          color: Colors.transparent,
                          highlightColor: Colors.deepOrange,
                          child: Text('Delivery Time').text.white.bold.make(),
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: Colors.deepOrange,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(30.0))),
                    ),
                    20.widthBox,
                    Container(
                      child: MaterialButton(
                          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                          textColor: Colors.white,
                          color: Colors.transparent,
                          highlightColor: Colors.deepOrange,
                          child: Text('Delivery Time'),
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: Colors.deepOrange,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(30.0))),
                    ),
                    20.widthBox,
                    Container(
                      child: MaterialButton(
                          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                          textColor: Colors.white,
                          color: Colors.transparent,
                          highlightColor: Colors.deepOrange,
                          child: Text('Top Offer'),
                          onPressed: () {
                            "Hello".text.red100.make();
                          },
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: Colors.deepOrange,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(30.0))),
                    ),
                    20.widthBox,
                    Container(
                      child: MaterialButton(
                          textColor: Colors.white,
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
            20.heightBox,
          Expanded(
            child: ListView.builder(
                  itemExtent: MediaQuery.of(context).size.height*0.1,
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: ListItemClass.restaurantList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return
                        Card(
                          color: Colors.transparent,
                          child: ListTile(
                            onTap:(){},
                            dense: true,
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(5.0),
                              child: Image.network(
                                  'https://images.pexels.com/photos/2331536/pexels-photo-2331536.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                                fit: BoxFit.fill,),
                            ),
                            title: ListItemClass.iconList[index].color==Colors.deepOrange ?
                            ListItemClass.restaurantList[index].text.white.xl2.bold.make():ListItemClass.restaurantList[index].text.gray700.xl2.bold.make(),//Gets Restaurant name from Variables.dart and Text style given using Vx
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                "Fast Food Corners".text.gray700.make(),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,

                                  children: [
                                    Icon(
                                        MdiIcons.clipboardClockOutline,
                                        color: Vx.gray700,
                                    size:18 ),
                                    ListItemClass.deliveryTime[index].text.gray700.make(),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,

                                  children: [
                                    Icon(MdiIcons.sale,color: Vx.gray700,
                                        size:18),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        ListItemClass.discText.text.gray700.make(),
                                        ListItemClass.discountpercent[index].text.gray700.make(),
                                        ListItemClass.discText2.text.gray700.make(),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                            isThreeLine: true,
                            trailing: Stack(
                              alignment: Alignment.center,
                              children: <Widget>[
                                ListItemClass.iconList[index],//Gets Icon List from Variables.dart based on Index
                                ListItemClass.iconNum[index].text.make(),//Gets Icon number from Variables.dart based on Index
                              ],
                            ),
                          ),
                        );
                    }),
          ),
            // This trailing comma makes auto-formatting nicer for build methods.
          ],
        ),
      ),
    );
  }
}
