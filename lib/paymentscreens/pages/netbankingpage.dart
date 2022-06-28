import 'package:flutter/material.dart';
class NetBankingPage extends StatefulWidget {
  const NetBankingPage({Key? key}) : super(key: key);

  @override
  _NetBankingPageState createState() => _NetBankingPageState();
}

class _NetBankingPageState extends State<NetBankingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Colors.indigoAccent,
        appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        automaticallyImplyLeading:false,title:
        Row(mainAxisSize: MainAxisSize.max,mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[IconButton(icon:Icon(Icons.arrow_back,size: 40),onPressed:(){Navigator.of(context).pop();},),
    Text("Net Banking")])),
      body:DefaultTabController(
        length: 2,
        initialIndex:0,
        child: Container(
          child: Column(
            children: [
              Scaffold(
                body: TabBar(
                  tabs: [
                    Tab(text: "Popular Banks",),
                    Tab(text: "Other Banks",)
                  ],
                ),
              ),
              TabBarView(children: [
                PopularBanks(),
                OtherBanks()
              ])
            ],
          ),
        ),
        
      )
    );
  }

  OtherBanks() {}

  PopularBanks() {}

  
}


