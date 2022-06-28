import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
///import 'package:intl/intl.dart';
class CarddetailsPage extends StatefulWidget {
  const CarddetailsPage({Key? key}) : super(key: key);

  @override
  _CarddetailsPageState createState() => _CarddetailsPageState();
}

class _CarddetailsPageState extends State<CarddetailsPage> {
  bool agree=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.indigoAccent,
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
          automaticallyImplyLeading:false,title:
      Row(mainAxisSize: MainAxisSize.max,mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[IconButton(icon:const Icon(Icons.arrow_back,size: 40),onPressed:(){Navigator.of(context).pop();},),
          const Text("Enter Card Details")])),
          body:SingleChildScrollView(
            child: Container(
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Padding(
                       padding: const EdgeInsets.all(8.8),
                       child: Card(
                         color:Colors.white,
                         child: Column(
                           children: <Widget>[

                             Padding(
                               padding: const EdgeInsets.only(left:30,right:30,top:4 ),
                               child:TextFormField(
                                 decoration:const InputDecoration(
                                   labelText:'CARD NUMBER',
                                   hintText: 'xxxx-xxxx-xxxx-xxxx'
                                 ),
                               ),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(left:30,right:30,top:12 ),
                               child: TextFormField(
                                 decoration:const InputDecoration(
                                     labelText:'NAME ON CARD',
                                     hintText: 'Eg:Michel Winslet'
                                 ),
                               ),
                             ),
                             Row(
                               mainAxisSize: MainAxisSize.max,
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               crossAxisAlignment: CrossAxisAlignment.center,
                               children: [
                                 Expanded(
                                   child: Padding(
                                     padding: const EdgeInsets.only(left:30,right:30,top: 12,bottom: 30),
                                     child: TextFormField(
                                 decoration:const InputDecoration(
                                       labelText:'EXPIRY DATE',
                                       hintText: 'XX/XX'
                                 ),
                               ),
                                   )
                               ),
                                 SizedBox(width: 20,),
                                 Expanded(
                                     child: Padding(
                                   padding: const EdgeInsets.only(left:1,right:100,top: 12,bottom: 30),
                                   child: TextField(
                                     obscureText: true,
                                     decoration:InputDecoration(
                                         labelText:'CVV',
                                          //suffixIcon: TextButton.icon(onPressed: null,
                                            //label:const Text("what's cvv",style:TextStyle(color:Colors.blue),),
                                           // icon:const Icon(Icons.info,color:Colors.blue,),)

                                     ),
                                   ),
                                 )),
                                 Padding(
                                   padding: const EdgeInsets.only(right:60),
                                   child: Image.asset('assets/cardscreenchip.png',height:20,scale: 2,),
                                 ),
                               ],


                             )
                           ],

                         ),

                       ),
                     ),
                    Row(children: [
                      Material(
                        color: Colors.indigoAccent,
                        child: Checkbox(
                          activeColor: Colors.white,
                          checkColor: Colors.black87,
                          value: agree,onChanged: (value){
                            setState(() {
                              agree=value??false;
                            });
                        },
                        ),
                      ),
                      const Text('Securely save card details (CVV  wont be \n saved)',style:TextStyle(fontSize: 20,color:Colors.white),),


                    ],
                    ),
                    //
                    const SizedBox(height: 298,),
                     Center(
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children:<Widget>[
                          Expanded(
                              child:Image.asset('assets/cards.png',height:20,width: 2,scale:8,)),
                        //  Expanded(child: Image.asset('assets/Payment Screen/rupaycard.png',height:130,width: 400 ,scale:8,),)
                        ]
                       ),
                     ),
                    const Text("(Your transactions are secure)",style:TextStyle(color:Colors.white,fontSize:17),),
                     Card(elevation: 4,child: Container(height: 70,child:  ElevatedButton(onPressed: null,
                         child: Text("Rs 69.00",style: TextStyle(fontSize: 20),)),width: MediaQuery.of(context).size.width),)
                   ],
                 ),

    ),
          ),
    );
  }
}
