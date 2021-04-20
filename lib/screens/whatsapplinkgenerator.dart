import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WhatsappLinkGenerator extends StatefulWidget {
  @override
  _WhatsappLinkGeneratorState createState() => _WhatsappLinkGeneratorState();
}

class _WhatsappLinkGeneratorState extends State<WhatsappLinkGenerator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(
                      height: 40,
                      image: AssetImage('images/whatsappgreen.png')),
                  Text("Whatspp Link Generator",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w900))
                ],
              ),
            ),
            Container(
              height: 600,
              decoration: BoxDecoration(
                color: Colors.green[400],
                borderRadius: BorderRadius.only(topLeft: Radius.circular(70)),
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 50, left: 25, right: 25),
                    height: 70,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image(
                          height: 30,
                          image: AssetImage('images/flagindia.png'),
                        ),
                        Text('+91'),
                        Container(
                          width: 190,
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Enter Number",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(width: 1))),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40, left: 25, right: 25),
                    height: 250,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            'Chat Message',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: 20, right: 20, bottom: 20, top: 20),
                          width: double.infinity,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Type Message",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(width: 1)),
                            ),
                            keyboardType: TextInputType.multiline,
                            maxLines: 8,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
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
                  width: 130,
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
                        Icons.settings,
                        size: 25,
                        color: Colors.white,
                      ),
                      Text('Generate',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600)),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.green,
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 19,
                        ),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
