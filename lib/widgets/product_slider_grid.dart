import 'package:ecommerce_my_la/model/slider_image_model.dart';
import 'package:flutter/material.dart';

class ProductSliderGrid extends StatelessWidget {
  const ProductSliderGrid({super.key});

  static List<SliderProductModel> dummyProductList = [
    SliderProductModel(
        imageUri: 'images/asset_produk8.jpg',
        titleProduct: 'Minyak Goreng Fortune',
        price: 32500,
        rating: 5.0,
        sale: 10),
    SliderProductModel(
        imageUri: 'images/asset_produk7.jpg',
        titleProduct: 'Siomay Bang Uki',
        price: 32500,
        rating: 5.0,
        sale: 10),
    SliderProductModel(
        imageUri: 'images/asset_produk6.png',
        titleProduct: 'Minyak Goreng Fortune',
        price: 32500,
        rating: 5.0,
        sale: 10),
    SliderProductModel(
        imageUri: 'images/asset_produk5.jpg',
        titleProduct: 'Minyak Goreng Fortune',
        price: 32500,
        rating: 5.0,
        sale: 10),
    SliderProductModel(
        imageUri: 'images/asset_produk4.jpg',
        titleProduct: 'Minyak Goreng Fortune',
        price: 32500,
        rating: 5.0,
        sale: 10),
    SliderProductModel(
        imageUri: 'images/asset_produk3.jpg',
        titleProduct: 'Minyak Goreng Fortune',
        price: 32500,
        rating: 5.0,
        sale: 10),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GridView.builder(
        physics: ScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 280,
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    dummyProductList[index].imageUri,
                    height: 97,
                    width: 180,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    dummyProductList[index].titleProduct,
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    "Rp ${dummyProductList[index].price.toStringAsFixed(3)}",
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.orange,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                          "${dummyProductList[index].rating.toString()} | Terjual ${dummyProductList[index].sale.toString()}"),
                    ],
                  )
                ],
              ),
            ),
          );
        },
        itemCount: dummyProductList.length,
      ),
    );
  }
}
