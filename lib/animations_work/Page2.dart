import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(),
      body: Center(
        child: Text('Page 2',style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 22),),
      ),
    );
  }
}
