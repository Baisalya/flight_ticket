import 'package:flight_ticket/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
   // final int num=1;
   final String lala="welcome";
    return Scaffold(
        appBar: AppBar(
           backgroundColor: Colors.white,//app bar colour
         // iconTheme:IconThemeData(color: Colors.black),//app bar icon color
          title: Text("✈HOME"),
          ),
        body: Container(
          decoration: BoxDecoration(image: DecorationImage(image:AssetImage("Assets/ss.png"),fit: BoxFit.cover)),
       
        ),
     drawer:MyDrawer(),
    );


  }
}
