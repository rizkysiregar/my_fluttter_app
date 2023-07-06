import 'package:flutter/material.dart';

class ItemMenuHome extends StatelessWidget {
  final String image;
  final String menuName;
  const ItemMenuHome({super.key, required this.image, required this.menuName});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 70,
        width: 70,
        child: Center(
          child: Column(
            children: [
              Image.asset(
                image,
                width: 32,
                height: 32,
              ),
              Expanded(
                  child: Text(
                menuName,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 11),
              ))
            ],
          ),
        ));
  }
}
