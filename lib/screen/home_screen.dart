import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
        title: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          width: 200,
          height: 40,
          child: const TextField(
            decoration: InputDecoration(
                hintText: "Cari Produk disini!",
                icon: Icon(Icons.search),
                border: InputBorder.none),
          ),
        ),
        actions: <Widget>[],
      ),
    );
  }
}
