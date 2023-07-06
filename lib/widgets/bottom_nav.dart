import 'package:flutter/material.dart';

class MyBottomNavigationItem extends StatefulWidget {
  const MyBottomNavigationItem({super.key});

  @override
  State<MyBottomNavigationItem> createState() => _MyBottomNavigationItemState();
}

class _MyBottomNavigationItemState extends State<MyBottomNavigationItem> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.blueAccent,
      type: BottomNavigationBarType.fixed,
      onTap: _onItemTapped,
      showUnselectedLabels: true,
      showSelectedLabels: true,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Colors.grey,
            ),
            label: 'Beranda'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.grey,
            ),
            label: 'Keranjang'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.grey,
            ),
            label: 'Pesanan'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_outlined,
              color: Colors.grey,
            ),
            label: 'Notifikasi'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person_2_outlined,
              color: Colors.grey,
            ),
            label: 'Profile'),
      ],
    );
  }
}
