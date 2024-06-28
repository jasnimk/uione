import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FifthScreen extends StatelessWidget {
  const FifthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        backgroundColor: const Color.fromARGB(255, 51, 102, 212),
        title: const Center(
          child: Text(
            'Order #1688068',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(child: Text('May 31, 05:42 PM')),
                Icon(
                  Icons.circle,
                  color: Colors.blue,
                  size: 15,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Delivered')
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(width: 1.0, color: Colors.grey),
              ),
            ),
            child: Card(
              shape: const BeveledRectangleBorder(),
              color: Colors.transparent,
              elevation: 0,
              child: Column(
                children: [
                  const Row(
                    children: [
                      Expanded(
                          child: Text('1 ITEM',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15))),
                      Icon(
                        Icons.receipt,
                        color: Colors.blue,
                        size: 15,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('RECEIPT',
                          style: TextStyle(color: Colors.blue, fontSize: 18))
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        fit: BoxFit.fill,
                        'assets/Images/img1.png',
                        width: 40,
                        height: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Explore | Men | Navy Blue',
                                style: TextStyle()),
                            const Text('1 piece',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 12)),
                            const Text('Size: XL',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 12)),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.blue),
                                            color: Color.fromARGB(
                                                255, 180, 201, 218)),
                                        width: 20,
                                        height: 20,
                                        alignment: Alignment.center,
                                        child: const Text(
                                          '1',
                                          style: TextStyle(
                                              color: Colors.blue, fontSize: 15),
                                        )),
                                    const Text('x ₹799')
                                  ],
                                ),
                                const SizedBox(
                                  width: 220,
                                ),
                                const Text('₹799')
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(width: 1.0, color: Colors.grey),
              ),
            ),
            child: const Card(
              color: Colors.transparent,
              elevation: 0,
              shape: BeveledRectangleBorder(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Item Total', style: TextStyle(fontSize: 15)),
                      Text('Delivery', style: TextStyle(fontSize: 15)),
                      SizedBox(
                        height: 4,
                      ),
                      Text('Grand Total', style: TextStyle(fontSize: 20))
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('₹799'),
                      Text('FREE',
                          style: TextStyle(color: Colors.green, fontSize: 15)),
                      SizedBox(
                        height: 4,
                      ),
                      Text('₹799', style: TextStyle(fontSize: 20))
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(width: 1.0, color: Colors.grey),
                ),
              ),
              child: Card(
                color: Colors.transparent,
                elevation: 0,
                shape: BeveledRectangleBorder(),
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Expanded(
                            child: Text('CUSTOMER DETAILS',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 18))),
                        Icon(
                          Icons.share,
                          size: 15,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('SHARE',
                            style: TextStyle(color: Colors.blue, fontSize: 18))
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Deepa',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18)),
                              Text('+91-7829000484',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 63, 61, 61),
                                      fontSize: 16))
                            ],
                          ),
                        ),
                        FaIcon(
                          FontAwesomeIcons.phone,
                          color: Colors.blue,
                          size: 18,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        FaIcon(
                          FontAwesomeIcons.whatsapp,
                          color: Colors.green,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Address',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18)),
                            Text('''D 1101 Charterd Beverly
Hills, Subramanyapura P.O''',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 63, 61, 61),
                                    fontSize: 16))
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('City',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18)),
                            Text('Bangalore',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 63, 61, 61),
                                    fontSize: 16))
                          ],
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        Column(
                          children: [
                            Text('Pincode',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18)),
                            Text('560061',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 63, 61, 61),
                                    fontSize: 16))
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Payment',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18)),
                            Text('Online',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 63, 61, 61),
                                    fontSize: 16))
                          ],
                        )),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.green),
                              color: Color.fromARGB(255, 194, 233, 214)),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 5, right: 5),
                            child: Text(
                              "PAID",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 55, 131, 57)),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )),
          Container(
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(width: 1.0, color: Colors.grey),
                ),
              ),
              child: const Card(
                color: Colors.transparent,
                elevation: 0,
                shape: BeveledRectangleBorder(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('ADDITIONAL INFORMATION',
                            style: TextStyle(
                                color: Color.fromARGB(255, 180, 179, 179),
                                fontSize: 16)),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('State',
                        style: TextStyle(color: Colors.black, fontSize: 18)),
                    Text('Karnataka',
                        style: TextStyle(
                            color: Color.fromARGB(255, 63, 61, 61),
                            fontSize: 16)),
                    SizedBox(height: 10),
                    Text('Email',
                        style: TextStyle(color: Colors.black, fontSize: 18)),
                    Text('greeniceaqua@gmail.com',
                        style: TextStyle(
                            color: Color.fromARGB(255, 63, 61, 61),
                            fontSize: 16))
                  ],
                ),
              )),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue),
                        borderRadius: BorderRadius.circular(5)),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent, elevation: 0),
                        onPressed: () {},
                        child: const Text(
                          'Share receipt',
                          style: TextStyle(color: Colors.blue, fontSize: 20),
                        )),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
