import 'package:flutter/material.dart';

class ActivePage extends StatefulWidget {
  const ActivePage({Key? key}) : super(key: key);

  @override
  _ActivePageState createState() => _ActivePageState();
}

class _ActivePageState extends State<ActivePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
      body: Container(
          width: 500,
          child: ListView.builder(
            itemCount: 2,
            itemBuilder: (BuildContext context, int index) => GestureDetector(
              onTap: () {},
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                elevation: 50,
                child: Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Colors.greenAccent,
                    Colors.blueAccent,
                    Colors.indigoAccent
                  ])),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(
                          onTap: () {},
                          // leading: CircleAvatar(radius: 30,backgroundImage:AssetImage("assets/doctor_pic2.png"),),
                          title: const Text(
                            "Ticket Id:123456",
                            style: TextStyle(color: Colors.blueGrey,fontWeight:FontWeight.bold),
                          ),
                          subtitle: const Text(
                            "🛫India ✈⇄Sweden🛬",
                            style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                          ),
                          trailing: TextButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: const BorderSide(
                                          color: Colors.white, width: 3))),
                            ),
                            child: const Text(
                              " CHECK ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {},
                          )),
                      ListTile(
                          title: const Text(
                            "Passanger Name:Baisalya Roul",
                            style:  TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          subtitle: const Text(
                            "FLight time:12:00",
                            style:  TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          trailing: TextButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: const BorderSide(
                                          color: Colors.white, width: 3))),
                            ),
                            child: const Text(
                              "CANCEL",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {},
                          ))
                    ],
                  ),
                ),
              ),
            ),
          )));
}
