

import 'package:flight_ticket/paymentscreens/pages/amazonpaypage.dart';
import 'package:flight_ticket/paymentscreens/pages/debit&creditcardpage.dart';
import 'package:flight_ticket/paymentscreens/pages/upipage.dart';
import 'package:flutter/material.dart';

class Firstpayment extends StatefulWidget {
  const Firstpayment({ Key? key }) : super(key: key);

  @override
  _FirstpaymentState createState() => _FirstpaymentState();
}

class _FirstpaymentState extends State<Firstpayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(automaticallyImplyLeading:false,toolbarHeight: 140,title: Row(mainAxisSize: MainAxisSize.max,mainAxisAlignment: MainAxisAlignment.start,children: <Widget>[
        Icon(Icons.arrow_back,size: 40,),

        SizedBox(width: 100,),

        Column(crossAxisAlignment: CrossAxisAlignment.start,children: <Widget>[
          Text("Amount to Pay",style: TextStyle(fontSize: 27),),
          SizedBox(height: 10,),
          Text("Rs 69 .00",style: TextStyle(fontSize: 25),),
        ],),
      ],),),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left:10),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: <Widget>[
            TextButton(onPressed: (){Navigator.push(context,MaterialPageRoute(builder :(context)=>CarddetailsPage()));}, child: Text("Debit /credit card",style: TextStyle(fontSize: 20,color: Colors.black),)),
            Divider(thickness: 2,color:Colors.black54,),

            TextButton(onPressed: (){Navigator.push(context,MaterialPageRoute(builder :(context)=>CarddetailsPage()));}, child: Text("NetBanking",style: TextStyle(fontSize: 20,color: Colors.black),)),
            Divider(thickness: 2,color:Colors.black54,),

             TextButton(onPressed: (){}, child: Text("Paytm Wallet",style: TextStyle(fontSize: 20,color: Colors.black)),),
            Divider(thickness: 2,color:Colors.black54,),

             TextButton(onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context) => Upipaymentpage()));}, child: Text("UPI ",style: TextStyle(fontSize: 20,color: Colors.black)),),
            Divider(thickness: 2,color:Colors.black54,),

             TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>AmazonPayPage()));}, child: Text("Amazon Pay",style: TextStyle(fontSize: 20,color: Colors.black)),),
            Divider(thickness: 2,color:Colors.black54,),

             TextButton(onPressed: (){}, child: Text("OlaMoney",style: TextStyle(fontSize: 20,color: Colors.black)),),
            Divider(thickness: 2,color:Colors.black54,),


             TextButton(onPressed: (){}, child: Text("Simple",style: TextStyle(fontSize: 20,color: Colors.black)),),
            Divider(thickness: 2,color:Colors.black54,),
             SizedBox(height: 300,),

            Card(elevation: 4,child: Container(height: 70,child: ElevatedButton(onPressed: null, child: Text("Rs 69.00",style: TextStyle(fontSize: 20),)),width: MediaQuery.of(context).size.width),)



          ],),

        ),
      ),
    );
  }
}