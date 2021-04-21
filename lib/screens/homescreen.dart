import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sociallinks/screens/messengerlinkgenerator.dart';
import 'package:sociallinks/screens/whatsapplinkgenerator.dart';
import 'package:sociallinks/widget/boxcontainer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Stack(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: <Color>[
                              Color(0xffee0000),
                              Color(0xffeeee00)
                            ],
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.orange),
                      child: Image(
                        image: AssetImage('images/chain.png'),
                      ),
                    ),
                  ],
                ),
                Text(
                  "Social Links App",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w900),
                )
              ],
            ),
          ),
          Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WhatsappLinkGenerator(),
                    ),
                  );
                },
                child: BoxContainer(
                  color: Colors.green[400],
                  imageName: 'whatsapp.png',
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MessengerLinkGenerator(),
                    ),
                  );
                },
                child: BoxContainer(
                  color: Colors.blue,
                  imageName: 'messenger.png',
                ),
              ),
              BoxContainer(
                color: Colors.orange[300],
                imageName: 'url.png',
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        clipBehavior: Clip.none,
        color: Colors.white,
        child: Container(
          height: 50,
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Positioned(
                top: -30,
                child: Container(
                  width: 110,
                  height: 50,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black38,
                          offset: const Offset(
                            5.0,
                            5.0,
                          ),
                          blurRadius: 10.0,
                          spreadRadius: 2.0,
                        ), //BoxShadow
                      ],
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.blue),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.share_outlined,
                        size: 25,
                        color: Colors.white,
                      ),
                      Text(
                        'Invite',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      'i',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
