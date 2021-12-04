import 'package:abc_app/widget/drawer.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class homepage extends StatelessWidget {
  final int days = 10;
  final String name = "uday";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First app'),
      ),
      body: Material(
          child: Center(
        child: Container(
          child: Text('${days} daya of flutter '),
        ),
      )),
      drawer: myDrawer(),
    );
  }
}
