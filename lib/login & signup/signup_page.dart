import 'package:flutter/material.dart';
import 'package:flight_ticket/utils/route.dart';
import 'package:flight_ticket/widgets//background.dart';
import 'package:flutter/services.dart';

class signup_page extends StatefulWidget {

  const signup_page({Key? key}) : super(key: key);

  @override
  _signup_pageState createState() => _signup_pageState();
}

//here string p use for email adress validator in flutter
String p = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
RegExp regExp = new RegExp(p);

Widget buildfullname() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text('Full Name',style:TextStyle(color: Colors.white,fontSize:15,fontWeight:FontWeight.bold),),
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
        child: TextFormField(
          validator: (value){
            if(value==null||value.isEmpty){
              return "Username can't be empty";
            }
            else if (value.length<6) {
              return "Username is too short";
            }
            return "";
          },
          keyboardType: TextInputType.name,enableSuggestions: true,style: TextStyle(
            color:Colors.black),
          decoration: InputDecoration(border: InputBorder.none,
            hintText: "Username",
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: Icon(Icons.account_box_outlined),//icon
          ),

        ),

      ),

    ],

  );
}
Widget buildname(){
  String _name;
  String name;
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text('Full Name',style:TextStyle(color: Colors.white,fontSize:15,fontWeight:FontWeight.bold),),
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
        child: TextFormField(
          validator: (value){
            if(value==null||value.isEmpty){
              return "Username can't be empty";
            }
            else if (value.length<6) {
              return "Username is too short";
            }
            return "";
          },

          keyboardType: TextInputType.name,enableSuggestions: true,style: TextStyle(
            color:Colors.black),
          decoration: InputDecoration(border: InputBorder.none,
            hintText: "Username",
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: Icon(Icons.account_box_outlined),//icon
          ),

        ),

      ),

    ],
  );
}
Widget buildEmail(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text('Email',style:TextStyle(color: Colors.white,fontSize:15,fontWeight:FontWeight.bold),),
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
        child: TextFormField(
          validator: (value){
           if(value==""){
             return "please fill email";
           }
           else if(!regExp.hasMatch(value!)){
             return "Email Is Invalid";
           }
           return "";
          },
          keyboardType: TextInputType.emailAddress,enableSuggestions: true,style: TextStyle(
            color:Colors.black),
            decoration: InputDecoration(border: InputBorder.none,
            hintText: "Email",
            hoverColor: Colors.cyan,
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: Icon(Icons.alternate_email_outlined), //icon
            )
            ,

        ),

        ),

    ],
  );
}
Widget buildPhonenum(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text('Phone Number',style:TextStyle(color: Colors.white,fontSize:15,fontWeight:FontWeight.bold),),
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
        child: TextFormField(
          validator: (value){
            if(value==""){
              return "please fill email";
            }
            else if(!regExp.hasMatch(value!)){
              return "Email Is Invalid";
            }
            return "";
          },
          keyboardType: TextInputType.phone,enableSuggestions: true,style: TextStyle(
            color:Colors.black),
          decoration: InputDecoration(border: InputBorder.none,
            hintText: "Phone Number",
            hoverColor: Colors.cyan,
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: Icon(Icons.phone), //icon
          )
          ,

        ),

      ),

    ],
  );
}
Widget password(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text('Password',style:TextStyle(color: Colors.white,fontSize:15,fontWeight:FontWeight.bold),),
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
        child: TextFormField(obscureText: true,

          keyboardType: TextInputType.name,enableSuggestions: true,style: TextStyle(
              color:Colors.black),
          decoration: InputDecoration(border: InputBorder.none,
            hintText: "Enter your new password",
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: Icon(Icons.vpn_key),//icon
          ),
        ),
      ),
    ],
  );
}
Widget cnfpassword(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text('Re-Type password',style:TextStyle(color: Colors.white,fontSize:15,fontWeight:FontWeight.bold),),
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
        child: const TextField(obscureText: true,

          keyboardType: TextInputType.name,enableSuggestions: true,style: TextStyle(
              color:Colors.black),
          decoration: InputDecoration(border: InputBorder.none,
            hintText:"confirm password",
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: Icon(Icons.vpn_key),//icon
          ),
        ),
      ),
    ],
  );
}
movetoOtp(BuildContext context)async{


     //after return button become normal

    await Navigator.pushNamed(context, Myroutes.inputotp);


    }
Widget buildotp(BuildContext context){
  return Column(
    crossAxisAlignment:CrossAxisAlignment.start,
    children: <Widget>[
  Row(mainAxisAlignment:MainAxisAlignment.center,

    children: [TextButton(onPressed:(){Navigator.pushNamed(context,Myroutes.inputotp);
    },
        child:Text("GET OTP",style:TextStyle(color:Colors.white,fontWeight:FontWeight.bold,fontSize: 15,),)),
     // Text(null)
      ],),

  ]
  );
}
Widget buildSIgnup(BuildContext context){
  return SizedBox(
    child: InkWell(
      borderRadius: BorderRadius.circular(3),

      onTap: (){Navigator.pushNamed(context,Myroutes.homeRoute);},
      child:Container(
        height:50,width:90,alignment: Alignment.center,color:Colors.deepPurpleAccent,
          child: Text("Submit",textAlign: TextAlign.center,style: TextStyle(fontSize:20,fontWeight:FontWeight.bold,),),

      ),
    ),
  );
}


class _signup_pageState extends State<signup_page> {
 late String name,email,phone;

 final TextEditingController _password=new TextEditingController();
 TextEditingController _confirmPassword=new TextEditingController();
 final GlobalKey<FormState>_formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {


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
                      Colors.teal],
                    begin:Alignment.bottomCenter,
                    end:Alignment.topRight
                ),

              ),

              child: Center(
                child: SingleChildScrollView(
                  child: Form(
                    key: _formkey,
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                  //  children:<> SingleChildScrollView(
                    // child:SizedBox(height: 30,)
                    // mainAxisAlignment: MainAxisAlignment.center,,
                      children: <Widget>[
                        Text("Sign In",
                      style: TextStyle(color:Colors.white70,fontSize: 40,fontWeight:FontWeight.bold
                      ),
                      ),
                        SizedBox(height: 30,),
                        buildname(),//method build name
                        buildEmail(),//// method build email
                        buildPhonenum(),
                        password(

                        ),
                        cnfpassword(),
                      //  buildotp(context),
                        SizedBox(height: 10,),
                        buildSIgnup(context)
                      ],
                    ),
                ),
              ),
              ),
            )
          ],
        ),
      ),
    ),
  );






  }

}
