import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:velocity_x/velocity_x.dart';
import 'dart:math';

class ListItemClass {
  static List<String> restaurantList = [
    "Raghu Franky",//1
    "Litti Wale",
    "Jail Chai Bar",
    "Amdavadi Dalwada Center",
    "Gupta Chaat Center",//5
    "Mother's Kitchen",
    "Happiness Fast Food",
    "Domino\'s",
    "Jail Chai Bar",
    "Amdavadi Dalwada Center",//10
    "Gupta Chaat Center",
    "Mother's Kitchen",
    "Happiness Fast Food",
    "Jail Chai Bar",
    "Amdavadi Dalwada Center",//15
    "Gupta Chaat Center",
    "Mother's Kitchen",
    "Happiness Fast Food",//18
  ];
  static List<Icon> iconList = [
    Icon(MdiIcons.decagram,color: Vx.gray700),//1
    Icon(MdiIcons.decagram,color: Vx.gray700),
    Icon(MdiIcons.decagram,color: Vx.gray700),
    Icon(MdiIcons.decagram,color: Vx.gray700),
    Icon(MdiIcons.decagram,color: Colors.deepOrange),//5
    Icon(MdiIcons.decagram,color: Colors.deepOrange),
    Icon(MdiIcons.decagram,color: Colors.deepOrange),
    Icon(MdiIcons.decagram,color: Colors.deepOrange),
    Icon(MdiIcons.decagram,color: Colors.deepOrange),
    Icon(MdiIcons.decagram,color: Colors.deepOrange),//10
    Icon(MdiIcons.decagram,color: Colors.deepOrange),
    Icon(MdiIcons.decagram,color: Colors.deepOrange),
    Icon(MdiIcons.decagram,color: Colors.deepOrange),
    Icon(MdiIcons.decagram,color: Colors.deepOrange),
    Icon(MdiIcons.decagram,color: Colors.deepOrange),//15
    Icon(MdiIcons.decagram,color: Colors.deepOrange),
    Icon(MdiIcons.decagram,color: Colors.deepOrange),
    Icon(MdiIcons.decagram,color: Colors.deepOrange),//18
  ];
  static List<String> iconNum = [
    '0',//1
    '0',
    '0',
    '0',
    '0',//5
    '0',
    '0',
    '0',
    '0',
    '1',//10
    '4',
    '5',
    '2',
    '4',
    '3',//15
    '2',
    '3',
    '5',//18
  ];
  static List<String> deliveryTime = [
    "Delivery in 30 mins",//1
    "Delivery in 35 mins",
    "Delivery in 20 mins",
    "Delivery in 40 mins",
    "Delivery in 30 mins",//5
    "Delivery in 30 mins",
    "Delivery in 35 mins",
    "Delivery in 25 mins",
    "Delivery in 25 mins",
    "Delivery in 25 mins",//10
    "Delivery in 35 mins",
    "Delivery in 45 mins",
    "Delivery in 55 mins",
    "Delivery in 15 mins",
    "Delivery in 30 mins",//15
    "Delivery in 35 mins",
    "Delivery in 40 mins",
    "Delivery in 20 mins",//18
  ];
  // static var _random = new Random();
  // static var discountpercent = List.generate(_random.nextInt(restaurantList.length),_random) ;
  static var rng = new Random();
  static var discountpercent = new List.generate(deliveryTime.length, (_) => rng.nextInt(50));
  static String discText= "Upto";
  static String discText2= "% Discount";
}