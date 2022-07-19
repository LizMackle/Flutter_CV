import 'package:flutter/material.dart';
import 'package:flutter_cv/screen/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0x00CFB398),
          elevation: 0,
          automaticallyImplyLeading: false,
        ),
        body: HomePage(),
      ),
    );
  }
}
