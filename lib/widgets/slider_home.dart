import 'package:ecommerce_my_la/model/slider_image_model.dart';
import 'package:flutter/material.dart';

class SliderHome extends StatelessWidget {
  const SliderHome({super.key});

  static List<SliderImageModel> dummy = [
    SliderImageModel(imageUri: 'images/asset_slider18.jpg'),
    SliderImageModel(imageUri: 'images/asset_slider17.jpg'),
    SliderImageModel(imageUri: 'images/asset_slider16.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: SizedBox(
        height: 130,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 150,
              child: Image.asset(dummy[index].imageUri, fit: BoxFit.cover),
            );
          },
          itemCount: dummy.length,
        ),
      ),
    );
  }
}
