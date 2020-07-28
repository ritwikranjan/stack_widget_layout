import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/doctor.jpg'),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.camera_alt,
                              color: Colors.grey[700],
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                'Dr. Ritwik Ranjan',
                                style: TextStyle(
                                    color: Colors.blueGrey[900],
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '10:00',
                                style: TextStyle(color: Colors.red[900]),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.menu),
                          )
                        ],
                      ),
                      Container(
                        height: 180,
                        width: 120,
                        margin: EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 4.0),
                        child: Image.asset(
                          'images/women.jpeg',
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  buildIcons(Icons.videocam),
                  buildIcons(Icons.mic),
                  buildIcons(Icons.chat_bubble),
                  buildIcons(Icons.call_end, color: Colors.red),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildIcons(
    IconData icon, {
    Color color = const Color.fromRGBO(00, 00, 00, 0.4),
  }) {
    return Container(
      margin: EdgeInsets.only(bottom: 80.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Icon(
          icon,
          size: 38.0,
          color: Colors.white,
        ),
      ),
    );
  }
}
