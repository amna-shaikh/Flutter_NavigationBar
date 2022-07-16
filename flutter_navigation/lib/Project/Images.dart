import 'package:flutter/material.dart';

class Images extends StatefulWidget {
  const Images({Key? key}) : super(key: key);

  @override
  _ImagesState createState() => _ImagesState();
}

class _ImagesState extends State<Images> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 3,
        children: [],
      ),
    );
  }
}
