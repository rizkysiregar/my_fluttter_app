import 'package:ecommerce_my_la/widgets/item_menu_home.dart';
import 'package:flutter/material.dart';

class ListMenuHome extends StatelessWidget {
  const ListMenuHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              ItemMenuHome(
                image: 'images/makanan.png',
                menuName: 'Product Hampers',
              ),
              ItemMenuHome(
                image: 'images/olahraga.png',
                menuName: 'Kerajinan Tangan',
              ),
              ItemMenuHome(
                image: 'images/office.png',
                menuName: 'Makanan UMKM',
              ),
              ItemMenuHome(
                image: 'images/otomotif.png',
                menuName: 'Assesoris UMKM',
              ),
              ItemMenuHome(
                image: 'images/perawatan_tubuh.png',
                menuName: 'Cafe & Restaurant',
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              ItemMenuHome(
                image: 'images/pertukangan.png',
                menuName: 'Official Store',
              ),
              ItemMenuHome(
                image: 'images/rumah.png',
                menuName: 'Jasa Cathering',
              ),
              ItemMenuHome(
                image: 'images/rumah_tangga.png',
                menuName: 'Kain Batik & Tenun',
              ),
              ItemMenuHome(
                image: 'images/wedding.png',
                menuName: 'Hemat tgl 9, 19, 29',
              ),
              ItemMenuHome(
                image: 'images/produk_lain.png',
                menuName: 'Lainnya',
              ),
            ],
          )
        ],
      ),
    );
  }
}
