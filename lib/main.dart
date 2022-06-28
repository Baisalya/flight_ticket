import 'dart:ui';
import 'package:flight_ticket/login%20&%20signup/login_page.dart';
import 'package:flight_ticket/login & signup/signup_page.dart';
import 'package:flight_ticket/login%20&%20signup/otp_auth.dart';
import 'package:flight_ticket/pages/Tickets.dart';
import 'package:flight_ticket/paymentscreens/firstpayscreen.dart';
import 'package:flight_ticket/utils/route.dart';
import 'package:flight_ticket/widgets/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'home_page.dart';
import 'package:flight_ticket/main.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context), //import frome themes
      darkTheme: MyTheme.darkTheme(context), //import from themes
      routes: {
        "/": (context) => login_page(),
        Myroutes.signupRoute: (context) => signup_page(),
        Myroutes.inputotp: (context) => inputotp(),
        Myroutes.homeRoute: (context) => HomePage(),
        Myroutes.paymentpage: (context) => Firstpayment(),
        Myroutes.ticketpage: (context) => Tickets(),
        // Myroutes.loginRoute:(context)=>loginpage()
      },
      debugShowCheckedModeBanner: false,
    );
  }

  bringticket({required bool la, int rupess = 000}) {}
}
