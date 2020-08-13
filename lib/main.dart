import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stack_widget_layout/box_widget.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: BoxContainer(),
      ),
    ),
  );
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
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (_) {
                          return BottomAppointmentReSchedule();
                        });
                  },
                  child: buildIcons(Icons.videocam),
                ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (_) {
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
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
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

const sliderThemeData = SliderThemeData(
  thumbShape: RoundSliderThumbShape(
    enabledThumbRadius: 10.0,
  ),
  trackShape: RoundedRectSliderTrackShape(),
  trackHeight: 10.0,
  inactiveTrackColor: Color(0xFF275819),
  activeTrackColor: Color(0xFF00B1F4),
  showValueIndicator: ShowValueIndicator.always,
);

class BottomTray extends StatefulWidget {
  @override
  _BottomTrayState createState() => _BottomTrayState();
}

class _BottomTrayState extends State<BottomTray> {
  TextEditingController controller;
  double _value = 500;

  @override
  void initState() {
    controller = TextEditingController(text: _value.round().toString());
    super.initState();
  }

  @override
  Widget build(_) {
    return Container(
      height: 600,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 32.0, right: 32.0, top: 48.0),
            child: SliderTheme(
              data: sliderThemeData,
              child: Slider(
                  min: 0,
                  max: 9999,
                  value: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value;
                      controller.value = TextEditingValue(
                          text: '${_value.round().toString()}');
                    });
                  }),
            ),
          ),
          Center(
            child: Container(
              width: 175,
              padding:
                  const EdgeInsets.only(left: 32.0, right: 32.0, bottom: 48.0),
              child: Center(
                child: TextField(
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  controller: controller,
                  onSubmitted: (value) {
                    setState(() {
                      _value = double.parse(value, (error) {
                        print(error);
                        throw Exception();
                      });
                    });
                  },
                  style: TextStyle(
                    color: Color(0xff166181),
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                  decoration: InputDecoration(
                    prefix: Text(
                      '\u20B9',
                      style: TextStyle(
                        color: Color(0xff166181),
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(bottom: 50),
              width: 300,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: Colors.lightBlueAccent,
                onPressed: () {},
                child: Text(
                  'Pay Now',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BottomAppointmentSchedule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 48.0),
            child: Image.asset('images/image3.png'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60.0),
            child: Text(
              'Your appointment has been booked',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff166181),
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 64.0, right: 64.0, top: 32.0),
            child: DottedBorder(
              borderType: BorderType.RRect,
              radius: Radius.circular(10),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Center(child: Text('20/AUGUST/2020 10:00AM')),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 32.0, right: 32.0, top: 60.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: RaisedButton(
                    padding: EdgeInsets.symmetric(horizontal: 35),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    color: Color(0xff00B1F4),
                    onPressed: () {},
                    child: Text(
                      'Accept',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: RaisedButton(
                    padding: EdgeInsets.symmetric(horizontal: 35),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    color: Color(0xFF5C8D23),
                    onPressed: () {},
                    child: Text(
                      'Deny',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BottomAppointmentReSchedule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 48.0),
            child: Image.asset('images/image3.png'),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 60.0, vertical: 20.0),
            child: Text(
              'Do you want to reschedule the appointment?',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff166181),
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 32.0, right: 32.0, top: 60.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: RaisedButton(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    color: Color(0xFF5C8D23),
                    onPressed: () {},
                    child: Text(
                      'No',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: RaisedButton(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    color: Color(0xff00B1F4),
                    onPressed: () {},
                    child: Text(
                      'Yes',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
