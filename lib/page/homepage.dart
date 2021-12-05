import 'package:abc_app/models/catelog.dart';
import 'package:abc_app/widget/drawer.dart';
import 'package:abc_app/widget/item.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class homepage extends StatelessWidget {
  final int days = 10;
  final String name = "uday";
  final dummyList = List.generate(50, (index) => CatalogModel.items[0]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Catelog App',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView.builder(
        itemCount: dummyList.length,
        itemBuilder: (context, index) {
          return ItemWidget(item: dummyList[index]);
        },
      ),
      drawer: myDrawer(),
    );
  }
}
