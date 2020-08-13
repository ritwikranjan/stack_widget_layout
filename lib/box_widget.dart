import 'package:flutter/material.dart';

class BoxContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.all(40),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.black),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.blueGrey.withAlpha(100),
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
              child: Text('abcd'),
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: Text(
                'Heading',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontSize: 26),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: Text(
                'Height: xxx | Weight: xxx',
              ),
            ),
            Container(
              color: Colors.blueGrey.withAlpha(100),
              padding: EdgeInsets.all(16),
              child: Text('Observed Symptoms'),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Text(
                'Some random symptoms',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              color: Colors.blueGrey.withAlpha(100),
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
              child: Text('Symptom Details'),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: RichText(
                text: TextSpan(
                    text: 'Some\n',
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(text: 'Multi'),
                      TextSpan(
                        text: ': Line\n',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: 'Rich\n'),
                      TextSpan(text: 'Text'),
                    ]),
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: RichText(
                text: TextSpan(
                    text: 'Some\n',
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(text: 'Multi'),
                      TextSpan(
                        text: ': Line\n',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: 'Rich\n'),
                      TextSpan(text: 'Text'),
                    ]),
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: RichText(
                text: TextSpan(
                    text: 'Some\n',
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(text: 'Multi'),
                      TextSpan(
                        text: ': Line\n',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: 'Rich\n'),
                      TextSpan(text: 'Text'),
                    ]),
              ),
            ),
            Container(
              color: Colors.blueGrey.withAlpha(100),
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
              child: Text('Medical History and LifeStyle'),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Text(
                'A long text that can go to multiple lines depending on the phone and screen size wraped in a container',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
