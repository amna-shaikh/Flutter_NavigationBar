import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            CircleAvatar(
              maxRadius: 50,
              backgroundImage: AssetImage('assets/images/pic1.jpg'),
            ),
            Text('My name'),
            Text('Description')
          ],
        ),
      ),
    );
  }
}
