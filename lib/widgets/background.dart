import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class background extends StatefulWidget {
  const background({Key? key}) : super(key: key);

  @override
  _backgroundState createState() => _backgroundState();
}

 class _backgroundState extends State<background> {
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
                        Colors.teal
                      ],
                      begin:Alignment.bottomCenter,
                      end:Alignment.topRight
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
