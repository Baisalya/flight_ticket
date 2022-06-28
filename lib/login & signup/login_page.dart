import 'dart:convert';
import 'dart:ui';

import 'package:flight_ticket/utils/route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart'as  http;
class login_page extends StatefulWidget {

  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  String p = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
 // RegExp regExp = new RegExp("p");
  String name="";
  bool changeButton=false;
  bool Ishidepassword=true;
  TextEditingController _name=TextEditingController();
  TextEditingController _Password=TextEditingController();
  final form_key=GlobalKey<FormState>(); //its a global key we can access anywhere
  //for now its use inside form key under app bar text
  movetoHome(BuildContext context)async {
    if (form_key.currentState!.validate()) {//formkey.currentkey.validate used for login acess to next page or not
    // RegistrationUser();
      setState(() {
        changeButton = true;//after return button become normal
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, Myroutes.homeRoute);
      setState(() {
        changeButton =false;
      });
    }
  }
  //movetohome a method created
  //which is used for login code which is to next page

  @override
  Widget build(BuildContext context) {

  return Scaffold(
  appBar: AppBar(title: Text("✈""book a trip""")),
  backgroundColor: Colors.white,
  body: SingleChildScrollView(
  child: Form(
    key: form_key,
    child: Column(
    children: [
    Image.asset("Assets/image/undraw_aircraft_fbvl.png",fit: BoxFit.cover),
    Text("WELCOME $name",style: TextStyle(fontSize: 40,color: Colors.blue,fontFamily:GoogleFonts.lato().fontFamily),),

    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(children: [
    TextFormField( //textfield
    decoration: InputDecoration(hintText: "Enter Your Email",
    suffixText: "@gmail.com",
    labelText: "Email-Id"
    ),
      validator: (value) {
        if (value==null||value.isEmpty) {
          return "username cannot be empty";
        }else if(!RegExp(p).hasMatch(value)){
        return "Please enter a valid email";
      }return null;
        },
        onChanged: (value){
      name=value;
      setState(() {

      });
      }
    ),
   TextFormField(
    obscureText: Ishidepassword,
    decoration: InputDecoration(
      hintText: "Enter password",
      labelText: "Password",
        suffixIcon: IconButton(
          onPressed:_tooglepasswordview,
          icon:Ishidepassword ? Icon(Icons.visibility_off_sharp) : Icon(Icons.visibility)

        )
    ),

     validator: (value) {
      if (value==null ||value.isEmpty) {
        return "Password can't be empty";
      }
      else if (value==null || value.length<6) {
        return "password lenghth shoul be 6";

      }
      return null;
    },
     textInputAction: TextInputAction.done,
  ),

    SizedBox(
    height: 20.0,
    ),
    Material(
        borderRadius:
        BorderRadius.circular(changeButton ?50:8),
        color: Colors.blue,

      child: InkWell(
      onTap: () =>movetoHome(context),//movetohome method use for login to next page
      child: AnimatedContainer(
        duration:Duration(seconds: 1),
      width: changeButton ? 50:150,//if true 50 as if false 150 (after click)
      height: 50,
      child:changeButton?Icon(Icons.done):
          Center(child: Text("💁🏻Login here",style:TextStyle(fontSize:changeButton ? 25:12,fontWeight:FontWeight.bold ))) ,
     // decoration:BoxDecoration(color: Colors.blue,
          //shape:changeButton
        //  ? BoxShape.circle
          //:BoxShape.rectangle,

        ),


      ),

      ),
      Row(mainAxisAlignment:MainAxisAlignment.center,
      children: [Text("New user",),TextButton(onPressed:(){Navigator.pushNamed(context, Myroutes.signupRoute);},
          child:Text("Sign-Up",style:TextStyle(fontWeight:FontWeight.bold),))],)


    ],),
    )

    ],

    ),

  ),

  ),

  );

  }
  void _tooglepasswordview() {//is hide boolean used
   Ishidepassword = !Ishidepassword; 
   if(Ishidepassword==true){
    Ishidepassword==false;
  }else{Ishidepassword==true;}
   setState(() { });}
//method created for
  //Future RegistrationUser() async{
   // var Apiurl="http://be.hcms.evossolutions.com/token/";
   // Map mapdata= {
    //  "username":_name.text,
    //  "password":_Password.text

   // };
  // print("JSON DATA:${mapdata}");
   // http.Response response=await http.post()
   // var data=jsonDecode(response.body);
  //  print("DATA:${data}");
  }


