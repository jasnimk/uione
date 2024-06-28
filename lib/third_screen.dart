import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

List<String> order = [
  '1688068',
  '1457741',
  '1408896',
  '1369633',
  '1370125',
  '1370568',
  '1359971',
  '1265103',
  '1173537',
  '1176731',
  '1174245',
  '1177731',
  '1174282',
  '1174435',
  '1164892',
];

List<String> price = [
  '799',
  '397.4',
  '686.42',
  '1123.5',
  '1722.75',
  '884.17',
  '599.25',
  '2,297',
  '599.25',
  '524.25',
  '699',
  '1123.5',
  '799',
  '524.25',
  '524.25'
];
List<String> data = [
  'Jul 12, 02:06 PM',
  'Apr 26, 07:47 AM',
  'Apr 11, 10:54 AM',
  'Apr 2, 11:29 AM',
  'Apr 2, 11:29 AM',
  'Apr 1, 11:19 AM',
  'Apr 1, 10:37 AM',
  'Mar 6, 01:26 AM',
  'Feb 22, 10:04 PM',
  'Feb 21, 01:25 PM',
  'Feb 21, 10:20 AM',
  'Feb 20, 09:54 AM',
  'Feb 19, 10:47 AM',
  'Feb 18, 12:08 PM',
  'Feb 13, 07:57 AM'
];
final List<String> imgPaths = [
  'assets/Images/img1.png',
  'assets/Images/img2.png',
  'assets/Images/img3.jpg',
  'assets/Images/img4.jpg',
  'assets/Images/img5.jpg',
  'assets/Images/img6.jpg',
  'assets/Images/img7.jpg',
  'assets/Images/img8.jpg',
  'assets/Images/img9.jpg',
  'assets/Images/img10.jpg',
  'assets/Images/img11.jpg',
  'assets/Images/img12.jpg',
  'assets/Images/img13.jpg',
  'assets/Images/img14.jpg',
  'assets/Images/img15.jpg',
];

class _ThirdScreenState extends State<ThirdScreen> {
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
            'Payments',
            style: TextStyle(color: Colors.white),
          ),
        ),
        actions: const [
          Icon(
            Icons.info,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTransactionLimitSection(),
            const SizedBox(height: 4.0),
            _buildDefaultMethodSection(),
            const SizedBox(height: 4.0),
            _buildPaymentsOverviewSection(),
            const SizedBox(height: 16.0),
            _buildTransactionsSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildTransactionLimitSection() {
    double currentLimit = 36688;
    double maxLimit = 50000;
    double progress = (maxLimit - currentLimit) / maxLimit;

    return Card(
      elevation: 2.0,
      shape: BeveledRectangleBorder(),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Transaction Limit',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'A free limit up to which you will receive the online payments directly in your bank.',
              style: TextStyle(color: Color.fromARGB(255, 128, 125, 125)),
            ),
            const SizedBox(height: 2.0),
            LinearProgressIndicator(
              value: progress,
              backgroundColor: Colors.grey[300],
              color: Colors.blue,
            ),
            const SizedBox(height: 2.0),
            Text(
              '${currentLimit.toStringAsFixed(0)} left out of ₹${maxLimit.toStringAsFixed(0)}',
              style: const TextStyle(color: Color.fromARGB(255, 128, 125, 125)),
            ),
            const SizedBox(height: 8.0),
            Container(
              height: 20,
              width: 120,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: const BeveledRectangleBorder()),
                child: const Text(
                  'Increase limit',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDefaultMethodSection() {
    return const Card(
      shape: BeveledRectangleBorder(),
      elevation: 2.0,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(child: Text('Default Method')),
                Text('Online Payments', style: TextStyle(color: Colors.grey)),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 10,
                ),
              ],
            ),
            Row(
              children: [
                Expanded(child: Text('Payment Profile')),
                Text('Bank account', style: TextStyle(color: Colors.grey)),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 10,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildPaymentsOverviewSection() {
    return Card(
      shape: const BeveledRectangleBorder(),
      child: Column(
        children: [
          ListTile(
            title: const Text('Payments Overview'),
            trailing: DropdownButton<String>(
              value: 'Life Time',
              onChanged: (String? newValue) {},
              items: <String>['Life Time', 'This Month', 'This Week']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildOverviewCard('AMOUNT ON HOLD', '₹0', Colors.orange),
              _buildOverviewCard('AMOUNT RECEIVED', '₹13,332', Colors.green),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildOverviewCard(String title, String amount, Color color) {
    return Expanded(
      child: Card(
        shape: const BeveledRectangleBorder(),
        color: color,
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  title,
                  style: const TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(amount,
                    style:
                        const TextStyle(color: Colors.white, fontSize: 18.0)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTransactionsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Transactions',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
        ),
        const SizedBox(height: 8.0),
        _buildTransactionTabs(),
        const SizedBox(height: 8.0),
        _buildTransactionList(),
      ],
    );
  }

  Widget _buildTransactionTabs() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildButton(
            'On hold', const Color.fromARGB(255, 209, 202, 202), Colors.black),
        _buildButton('Payouts (15)', Colors.blue, Colors.white),
        _buildButton(
            'Refunds', const Color.fromARGB(255, 209, 202, 202), Colors.black),
      ],
    );
  }

  Widget _buildButton(String text, Color color, Color color1) {
    return SizedBox(
        height: 20,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              backgroundColor: color),
          onPressed: () {},
          child: Text(
            text,
            style: TextStyle(color: color1),
          ),
        ));
  }

  Widget _buildTransactionList() {
    return ListView.separated(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      itemCount: data.length,
      itemBuilder: (context, index) {
        return _buildTransactionItem(index);
      },
      separatorBuilder: (context, index) {
        return const Divider();
      },
    );
  }

  Widget _buildTransactionItem(int index) {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Row(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      fit: BoxFit.fill,
                      imgPaths[index],
                      width: 40,
                      height: 50,
                    ),
                    Column(children: [
                      Text('Order #${order[index]}',
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      Text(data[index],
                          style:
                              const TextStyle(color: Colors.grey, fontSize: 12))
                    ])
                  ],
                ),
              ),
              Row(
                children: [
                  Text('₹${price[index]} deposited to 58860200000138',
                      style: const TextStyle(fontSize: 12)),
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '₹${price[index]}',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const Row(
                  children: [
                    Icon(
                      Icons.circle,
                      color: Colors.green,
                      size: 10,
                    ),
                    SizedBox(width: 4),
                    Text('Successful', style: TextStyle(color: Colors.green)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Widget _buildTransactionItem(int index) {
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(vertical: 8.0),
  //     child: Row(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         ClipRRect(
  //           child: Image.asset(
  //             imgPaths[index],
  //             width: 40,
  //             height: 50,
  //           ),
  //         ),
  //         const SizedBox(width: 8.0),
  //         Expanded(
  //           child: Column(
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: [
  //               Text('Order #${order[index]}',
  //                   style: const TextStyle(fontWeight: FontWeight.bold)),
  //               Text(data[index],
  //                   style: const TextStyle(color: Colors.grey, fontSize: 12)),
  //               const SizedBox(height: 4.0),
  //               Text('₹${price[index]} deposited to 58860200000138',
  //                   style: const TextStyle(fontSize: 12)),
  //             ],
  //           ),
  //         ),
  //         Column(
  //           crossAxisAlignment: CrossAxisAlignment.end,
  //           children: [
  //             Text(
  //               '₹${price[index]}',
  //               style: const TextStyle(fontWeight: FontWeight.bold),
  //             ),
  //             Row(
  //               children: const [
  //                 Icon(
  //                   Icons.circle,
  //                   color: Colors.green,
  //                   size: 10,
  //                 ),
  //                 SizedBox(width: 4),
  //                 Text('Successful', style: TextStyle(color: Colors.green)),
  //               ],
  //             ),
  //           ],
  //         ),
  //       ],
  //     ),
  //   );
  // }
}
