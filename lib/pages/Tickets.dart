import 'package:flight_ticket/pages/tabs/Active.dart';
import 'package:flight_ticket/pages/tabs/Cancel.dart';
import 'package:flutter/material.dart';




class Tickets extends StatefulWidget {
  const Tickets({ Key? key }) : super(key: key);
  

  @override
  _TicketsState createState() => _TicketsState();
}

class _TicketsState extends State<Tickets> {
  @override
  Widget build(BuildContext context) {
    var activePage = ActivePage();
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.blueAccent,
        title: Text("Your Tickets"),
      bottom:TabBar(
        tabs:[
          Tab(text: "Active",),
          Tab(text: "Cancelled",),
         // Tab(text: "Past",),


      ],),),
        body:  TabBarView(
          children: [
            activePage,
            CancelPage(),
          //  PastAppointmentPage()
          ],
        ),

    ));

  }
}