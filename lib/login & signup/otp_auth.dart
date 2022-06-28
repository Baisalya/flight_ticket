import 'package:flight_ticket/utils/route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class inputotp extends StatefulWidget {
  const inputotp({Key? key}) : super(key: key);

  @override
  _inputotpState createState() => _inputotpState();
}
Widget otp(){
  bool hidepassword=true;
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      SizedBox(width: 49,),
      Text('OTP',style:TextStyle(color: Colors.white,fontSize:15,fontWeight:FontWeight.bold),),
      SizedBox(height: 10,),
      Container(
        alignment:Alignment.centerLeft,
        decoration: BoxDecoration(
          color:Colors.white70,
          borderRadius: BorderRadius.circular(20),
          boxShadow:[ BoxShadow(color: Colors.black26,blurRadius: 3,offset:Offset(0,2),),
          ],

        ),
        height: 60,
        child: TextField(
          obscureText:hidepassword,//use bool var here for hide pass
          keyboardType: TextInputType.number,enableSuggestions: true,
          style: TextStyle(
            color:Colors.black),
          decoration:
          InputDecoration(border: InputBorder.none,
            //here suffix icon use as widgets and then inkwell use for function
           // suffixIcon:InkWell
          //  (
             //child: Icon(Icons.visibility)
           // ),
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: Icon(Icons.lock_clock),//icon
          ),

        ),

      ),

    ],
  );

}

Widget validate(BuildContext context){
  return Material(
    borderRadius: BorderRadius.circular(4),
    color:Colors.indigoAccent,
    shadowColor:Colors.black,
    child: InkWell(
        onTap: (){Navigator.pushNamed(context,Myroutes.homeRoute);},

      child:Container(height: 43,width:154,alignment:Alignment.center,
          child:Text("VERIFY",style:TextStyle(fontSize: 37,fontWeight: FontWeight.bold,color:Colors.green),
          ))
     // Center(child: Text("Auth",style:TextStyle(fontSize:20,fontWeight:FontWeight.bold )))
    )
  );
}
class _inputotpState extends State<inputotp> {
  @override
  Widget build(BuildContext context) {
  // bool hidepassword=true;
    return Scaffold(
        body:AnnotatedRegion<SystemUiOverlayStyle>(
        value:SystemUiOverlayStyle.light ,
        child:GestureDetector(
        child: Stack(
        children: <Widget>[
        Container(
        height:double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
        gradient:LinearGradient(
        colors: [
        Colors.deepPurpleAccent,
        Colors.indigoAccent,
        Colors.cyanAccent,
        Colors.cyan,
        Colors.teal
        ],
        begin:Alignment.bottomCenter,
        end:Alignment.topRight
    ),

    ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 250,),//password box height
              otp(),
              SizedBox(height: 10,),//sized box used for distance
              validate(context),

            ],

          ),

        )
        ],

        )
    ),
    ),
    );
  }

}
