import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // @override
  // int _selectedIndex = 4;

  // static const List<Widget> _widgetOptions = <Widget>[
  //   Text(
  //     'Home',
  //   ),
  //   Text(
  //     'Orders',
  //   ),
  //   Text(
  //     'Products',
  //   ),
  //   Text(
  //     'Manage',
  //   ),
  //   Text(
  //     'Account',
  //   ),
  // ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Align(
          alignment: Alignment.center,
          child: Text(
            'Manage Store',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 80, 143, 194),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: (Icon(
                Icons.home,
                //color: Colors.grey,
              )),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: (Icon(
                Icons.account_box,
                //color: Colors.grey,
              )),
              label: 'Orders'),
          BottomNavigationBarItem(
            icon: (Icon(Icons.grid_view)),
            label: 'Products',
          ),
          BottomNavigationBarItem(icon: (Icon(Icons.layers)), label: 'Manage'),
          BottomNavigationBarItem(icon: (Icon(Icons.person)), label: 'Account'),
        ],
        currentIndex: 3,
        selectedItemColor: Colors.blue, // Selected icon and label color
        unselectedItemColor: Colors.grey, // Unselected icon and label color
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(color: Colors.blue),
      ),
      body: Container(
        color: const Color.fromARGB(255, 226, 223, 223),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            childAspectRatio: (55.0 / 35.0),
            mainAxisSpacing: 8,
            children: [
              _buildGridItem(Icons.campaign, 'Marketing Designs',
                  const Color.fromARGB(255, 255, 174, 0)),
              _buildGridItem(
                  Icons.currency_rupee, 'Online Payments', Colors.green),
              _buildGridItem(Icons.discount, 'Discount Coupons',
                  const Color.fromARGB(255, 221, 201, 87)),
              _buildGridItem(Icons.people, 'My Customers',
                  const Color.fromARGB(255, 17, 70, 58)),
              _buildGridItem(Icons.qr_code_scanner, 'Store QR code',
                  const Color.fromARGB(255, 82, 85, 82)),
              _buildGridItem(Icons.currency_rupee_rounded, 'Extra Charges',
                  const Color.fromARGB(255, 81, 39, 85)),
              _buildGridItem(Icons.notes, 'Order Form',
                  const Color.fromARGB(255, 175, 76, 145),
                  isNew: true),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGridItem(IconData icon, String title, Color color,
      {bool isNew = false}) {
    return Card(
      color: Colors.white,
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                      width: 35,
                      height: 30,
                      color: color,
                      child: Icon(icon, size: 23.0, color: Colors.white)),
                  if (isNew == true)
                    Row(
                      children: [
                        const SizedBox(
                          width: 76,
                        ),
                        Container(
                            color: Colors.green,
                            child: const Padding(
                              padding: EdgeInsets.only(
                                  left: 5.0, right: 5.0, top: 2, bottom: 2.0),
                              child: Text(
                                'New',
                                style: TextStyle(color: Colors.white),
                              ),
                            )),
                      ],
                    ),
                ],
              ),
              const SizedBox(height: 8.0),
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
