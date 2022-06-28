import 'package:flutter/material.dart';
class Upipaymentpage extends StatefulWidget {
  const Upipaymentpage({Key? key}) : super(key: key);

  @override
  _UpipaymentpageState createState() => _UpipaymentpageState();
}

class _UpipaymentpageState extends State<Upipaymentpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.indigoAccent,
          automaticallyImplyLeading:false,title:
      Row(mainAxisSize: MainAxisSize.max,mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[IconButton(icon:Icon(Icons.arrow_back,size: 40),onPressed:(){Navigator.of(context).pop();},),
            Text("UPI")])),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
          //  mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8,right: 8,top: 8,),
                child: Image.asset("assets/Payment Screen/upi.png",height: 300,width: 400,),
              ),
              //SizedBox(height: 60,),
              Padding(
                padding: const EdgeInsets.only(left: 40,right: 40),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Enter your VPA",
                    hintText: "124id@upi",
                    enabledBorder:OutlineInputBorder(borderRadius:BorderRadius.circular(20))
                  ),
                ),
              ),
              SizedBox(height: 260,),
              Card(elevation: 4,child: Container(height: 70,child: ElevatedButton(onPressed: null, child: Text("Rs 69.00",style: TextStyle(fontSize: 20),)),width: MediaQuery.of(context).size.width),)

            ],
          ),
        ),
      ),
    );
  }
}
