import 'package:flutter/material.dart';
import 'package:flutter_navigation/Project/Mainscreen.dart';
void main() => runApp(myapp());
class myapp extends StatefulWidget {
  const myapp({Key? key}) : super(key: key);
  @override
  _State createState() => _State();
}

class _State extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MainScreen());
  }
}
