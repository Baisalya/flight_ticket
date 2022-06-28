

import 'package:flutter/material.dart';

class MyTheme{


static ThemeData lightTheme(BuildContext context)=>ThemeData(
    primarySwatch: Colors.lightBlue,
//here app bar theme for every pages added and we can controll or app bar
appBarTheme:AppBarTheme( color:Colors.deepPurpleAccent,
elevation: 0.0),
iconTheme: IconThemeData(color: Colors.black54),//app bar navigator colour
textTheme: Theme.of(context).textTheme //from here evrything chnages
);
static ThemeData darkTheme(BuildContext context)=>ThemeData(
  brightness: Brightness.dark,
  primarySwatch: Colors.teal,
);
}