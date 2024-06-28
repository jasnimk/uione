import 'package:flutter/material.dart';

class SixthScreen extends StatefulWidget {
  const SixthScreen({super.key});

  @override
  State<SixthScreen> createState() => _SixthScreenState();
}

final List<String> imgPaths = [
  'assets/Images/img21.png',
  'assets/Images/img22.png',
  'assets/Images/img23.png',
  'assets/Images/img24.png',
  'assets/Images/img25.png',
  'assets/Images/img26.png',
  'assets/Images/img27.png',
  'assets/Images/img28.png',
];
List<String> price = [
  '₹799',
  '₹799',
  '₹399',
  '₹699',
  '₹449',
  '₹599',
  '₹1,299',
  '₹1,199'
];

List<String> description = [
  'Couch Potato |Women',
  'Couch Potato |Men |Bl',
  'Mug | Explore',
  'Combo Blahst 1 | Pack',
  'Mug | Orchard',
  'Combo Blahst 2 | Explore',
  'I See Combo Pack',
  'Kids Combo Blahst'
];
bool isSwitched = false;

class _SixthScreenState extends State<SixthScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: 1, vsync: this);

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        automaticallyImplyLeading: false,
        title: const Text(
          'Catalogue',
          style: TextStyle(color: Colors.white),
        ),
        actions: const [
          Icon(
            Icons.search,
            color: Colors.white,
          ),
          SizedBox(
            width: 20,
          )
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Products'),
            Tab(text: 'Categories'),
          ],
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white,
          labelStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          unselectedLabelStyle: const TextStyle(fontSize: 16),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildList(),
          // _buildCategoryList(), // Placeholder for categories
        ],
      ),
    );
  }

  Widget _buildList() {
    return ListView.builder(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      itemCount: imgPaths.length,
      itemBuilder: (context, index) {
        return _buildCard(index);
      },
    );
  }

  Widget _buildCard(int index) {
    return Card(
      shape: const BeveledRectangleBorder(),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                fit: BoxFit.fill,
                imgPaths[index],
                width: 60,
                height: 60,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(description[index]),
                        ),
                        const Icon(
                          Icons.more_vert,
                          size: 15,
                        ),
                        const SizedBox(
                          width: 10,
                        )
                      ],
                    ),
                    const Text('1 piece'),
                    Text(price[index]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'In stock',
                          style: TextStyle(color: Colors.green),
                        ),
                        Transform.scale(
                          scale: 0.5,
                          child: Switch(
                            value: isSwitched,
                            onChanged: (bool value) {
                              setState(() {
                                isSwitched = value;
                              });
                            },
                            activeColor: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4.0, right: 4.0),
            child: Container(
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(width: 1.0, color: Colors.grey),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.only(top: 4.0, bottom: 4.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 65,
                    ),
                    Icon(
                      Icons.share,
                      size: 15,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text('Share Product')
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
