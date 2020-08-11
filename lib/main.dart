import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

const Color greenColor = Color(0xFF5C8D24);
const Color blueColor = Color(0xFF03B0F2);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            alignment: Alignment.topCenter,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
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
                      height: 150,
                      width: 100,
                      margin:
                          EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
                      child: Image.asset(
                        'images/women.jpeg',
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    Container(
                      height: 150,
                      width: 100,
                      margin:
                          EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
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
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return Dialog(
                          backgroundColor: Colors.transparent,
                          child: Stack(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.all(12),
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(20.0),
                                          child: Image.asset(
                                            'images/image1.png',
                                            fit: BoxFit.contain,
                                            height: 200,
                                            width: 200,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 50,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 8.0),
                                          child: Center(
                                            child: RichText(
                                              text: TextSpan(
                                                style: TextStyle(
                                                  fontSize: 15.0,
                                                  color: Colors.blueGrey,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                text: 'Total Charges ',
                                                children: [
                                                  TextSpan(
                                                    text: 'Rs. 500.\n',
                                                    style: TextStyle(
                                                        color: Colors.red),
                                                  ),
                                                  TextSpan(
                                                      text:
                                                          'Please pay the amount'),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 60,
                                        ),
                                        Container(
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: RaisedButton(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            color: blueColor,
                                            onPressed: () {},
                                            child: Text('Pay Now'),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 0,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: greenColor,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(
                                        Icons.close,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: buildIcons(Icons.mic),
                ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return Dialog(
                          backgroundColor: Colors.transparent,
                          child: Stack(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.all(12),
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(20.0),
                                          child: Image.asset(
                                            'images/image1.png',
                                            fit: BoxFit.scaleDown,
                                            height: 150,
                                            width: 150,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 8.0),
                                          child: Center(
                                            child: RichText(
                                              text: TextSpan(
                                                style: TextStyle(
                                                  fontSize: 15.0,
                                                  color: Colors.grey.shade600,
                                                ),
                                                text: '',
                                                children: [
                                                  TextSpan(
                                                    text: '5 min',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.red),
                                                  ),
                                                  TextSpan(
                                                      text:
                                                          ' left to over consultation.'),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 25,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 0,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: blueColor,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(
                                        Icons.close,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: buildIcons(Icons.chat_bubble),
                ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      barrierDismissible: false, // user must tap button!
                      builder: (context) {
                        return AlertDialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          content: SingleChildScrollView(
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Image.asset(
                                    'images/image2.png',
                                    fit: BoxFit.scaleDown,
                                    height: 150,
                                    width: 150,
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.grey.shade600,
                                    ),
                                    text: 'Would you like to ',
                                    children: [
                                      TextSpan(
                                        text: 'Disconnect',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: greenColor),
                                      ),
                                      TextSpan(text: ' the call?'),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 35,
                                ),
                                Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Expanded(
                                        child: RaisedButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          color: greenColor,
                                          textColor: Colors.white,
                                          child: Text('Yes'),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Expanded(
                                        child: RaisedButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          color: blueColor,
                                          textColor: Colors.white,
                                          child: Text('No'),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: buildIcons(
                    Icons.call_end,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          )
        ],
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
