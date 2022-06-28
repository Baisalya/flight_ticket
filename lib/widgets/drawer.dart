import 'package:flight_ticket/paymentscreens/firstpayscreen.dart';
import 'package:flight_ticket/utils/route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flight_ticket/login_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);
  Widget drawertheme(){
   return Container(decoration: BoxDecoration(
      gradient:LinearGradient(
          colors: [
            Colors.deepPurpleAccent,
            Colors.indigoAccent,
            Colors.cyanAccent,
            Colors.cyan,
            Colors.teal],
          begin:Alignment.bottomCenter,
          end:Alignment.topRight
      ),

    ),



   );
  }

Widget builddraw(){
  final image="Assets/image/drawer.jpg";
  return Column(
        children:<Widget>[ UserAccountsDrawerHeader(

        margin: EdgeInsets.zero,
        decoration: BoxDecoration(
          image:DecorationImage(image:AssetImage("Assets/BG.jpg"),fit: BoxFit.cover),
          color:Colors.deepPurpleAccent),
        accountName: Text("CUTM",style:TextStyle(fontSize:20,fontWeight:FontWeight.bold,color:Colors.white),),
        accountEmail: Text("CUTM@cutm.co.in",style:TextStyle(fontSize:20,color:Colors.white),),
        currentAccountPicture:CircleAvatar(backgroundImage:AssetImage(image)),
        onDetailsPressed: (){}),
    ],


    );//side of tringle
}
  Widget buildlisdr(BuildContext context){
  return Column(
    children:<Widget>[
     ListTile(
    leading: Icon(CupertinoIcons.home,color:Colors.blue,),title: Text("HoME"),
    onTap: (){Navigator.pushNamed(context,Myroutes.homeRoute);
    },),

    ListTile(
    leading:Icon(CupertinoIcons.profile_circled,color:Colors.blue),title:Text("PrOFILE"),onTap: (){}),
    ListTile(
    leading:Icon(CupertinoIcons.arrow_2_squarepath,color:Colors.blue),title:Text("RoUTES"),onTap: (){}),
    ListTile(
    leading:Icon(CupertinoIcons.tickets,color:Colors.blue),title:Text("YoUR TiCKETS"),onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Firstpayment()));}),
    ListTile(
          leading:Icon(CupertinoIcons.money_euro_circle_fill,color:Colors.blue),title:Text("YoUR Wallet"),onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Firstpayment()));}),
    ListTile(
    leading:Icon(CupertinoIcons.circle_grid_hex,color:Colors.blue),title:Text("SETTING"),onTap: (){}),
    ListTile(
    leading:Icon(Icons.bug_report,color:Colors.blue),title:Text("BuG RePORT"),onTap: (){}),
    Divider(),
    Expanded(child: Align(alignment: Alignment.bottomLeft,
    child: ListTile(
    leading:Icon(Icons.logout,color:Colors.blue),title:Text("LoGOuT"),onTap: (){}
    ),
    )),
    ],

    );
}
  @override
  Widget build(BuildContext context) {
    final  image="Assets/image/drawer.jpg";
    return Drawer(
      //child: Container(
        child: Center(
          child: Column(
            //mainAxisAlignment: MainAxisSize.max,
            children: <Widget>[
              builddraw(),
              ListTile(
                leading: Icon(CupertinoIcons.home,color:Colors.blue,),title: Text("HoME"),
                onTap: (){Navigator.pushNamed(context,Myroutes.homeRoute);
                },),

              ListTile(
                  leading:Icon(CupertinoIcons.profile_circled,color:Colors.blue),title:Text("PrOFILE"),onTap: (){}),
              ListTile(
                  leading:Icon(CupertinoIcons.arrow_2_squarepath,color:Colors.blue),title:Text("RoUTES"),onTap: (){}),
              ListTile(
                  leading:Icon(CupertinoIcons.tickets,color:Colors.blue),title:Text("YoUR TiCKETS"),onTap: (){Navigator.pushNamed(context, Myroutes.ticketpage);}),
              ListTile(
                  leading:Icon(Icons.money,color:Colors.blue),title:Text("YoUR Wallet"),onTap: (){Navigator.pushNamed(context, Myroutes.paymentpage);}),
              ListTile(
                  leading:Icon(CupertinoIcons.circle_grid_hex,color:Colors.blue),title:Text("SETTING"),onTap: (){}),
              ListTile(
                  leading:Icon(Icons.bug_report,color:Colors.blue),title:Text("BuG RePORT"),onTap: (){}),
              Divider(),
              Expanded(child: Align(alignment: Alignment.bottomLeft,
                child: ListTile(
                    leading:Icon(Icons.logout,color:Colors.blue),title:Text("LoGOuT"),onTap: (){}
                ),
              )),
            ],


                ),
        ),

          );

  }
}
