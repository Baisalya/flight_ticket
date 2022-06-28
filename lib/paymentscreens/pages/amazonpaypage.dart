import 'package:flutter/material.dart';
class AmazonPayPage extends StatefulWidget {
  const AmazonPayPage({Key? key}) : super(key: key);

  @override
  _AmazonPayPageState createState() => _AmazonPayPageState();
}

class _AmazonPayPageState extends State<AmazonPayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.indigoAccent,
          automaticallyImplyLeading:false,title:
      Row(mainAxisSize: MainAxisSize.max,mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[IconButton(icon:Icon(Icons.arrow_back,size: 40),onPressed:(){Navigator.of(context).pop();},),
            Text("Amazon pay")])),
      body: SingleChildScrollView(
        child: Center(
          //  mainAxisAlignment: MainAxisAlignment.center,
          child:
            Column(
             // margin: EdgeInsets.all(8.0),
              children:<Widget>[
                Padding(
                  padding: const EdgeInsets.only(left:8,right: 8,top:60,bottom:0),
                  child: Image.asset("assets/Payment Screen/amazon-pay.png",height: 120,width: 620,),
                ),
            Padding(padding: EdgeInsets.only(left:8,right: 8,top:1,bottom:0),
            child: Text("Tap on Pay to Link and proceed with Amazon Pay",style:TextStyle(color:Colors.black,),),
            ),




            SizedBox(height: 440,),
                Card(elevation: 4,child: Container(height: 70,child: ElevatedButton(onPressed: null, child: Text("Rs 69.00",style: TextStyle(fontSize: 20),)),width: MediaQuery.of(context).size.width),)
]
            )
        ),
      ),
    );
  }
}
