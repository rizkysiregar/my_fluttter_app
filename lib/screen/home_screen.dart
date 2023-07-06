import 'package:ecommerce_my_la/widgets/bottom_nav.dart';
import 'package:ecommerce_my_la/widgets/list_menu_home.dart';
import 'package:ecommerce_my_la/widgets/payment_status_home.dart';
import 'package:ecommerce_my_la/widgets/product_slider.dart';
import 'package:ecommerce_my_la/widgets/product_slider_grid.dart';
import 'package:ecommerce_my_la/widgets/slider_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
            width: 350,
            height: 43,
            child: const TextField(
                decoration: InputDecoration(
                    hintText: "Cari Produk disini!",
                    icon: Icon(Icons.search),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(vertical: 8))),
          ),
          actions: <Widget>[
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.mail_outline,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications_none_outlined,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.white,
                ))
          ],
        ),
        body: SingleChildScrollView(
          child: Center(
              child: Container(
            margin: EdgeInsets.only(left: 16, right: 16),
            child: const Column(
              children: [
                SizedBox(
                  height: 25,
                ),
                PaymentStatusHome(),
                SizedBox(
                  height: 16,
                ),
                ListMenuHome(),
                SizedBox(height: 16),
                SliderHome(),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Terlaris Hari Ini',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Lihat Semua',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.lightBlue,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(height: 16),
                ProductSlider(),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Produk Terbaru',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Lihat Semua',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.lightBlue,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(height: 16),
                ProductSliderGrid(),
              ],
            ),
          )),
        ),
        bottomNavigationBar: const MyBottomNavigationItem());
  }
}
