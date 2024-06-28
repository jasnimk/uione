import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class FourthScreen extends StatefulWidget {
  const FourthScreen({super.key});

  @override
  State<FourthScreen> createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
  List<bool> _expandedStates = List.generate(6, (_) => false);

  late YoutubePlayerController _youtubeController;

  @override
  void initState() {
    super.initState();
    _youtubeController = YoutubePlayerController(
      initialVideoId: '1ZxCzHao2XaGkBI6', // Replace with your YouTube video ID
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
  }

  @override
  void dispose() {
    _youtubeController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 120,
                  child: AppBar(
                    leading: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    backgroundColor: const Color.fromARGB(255, 51, 102, 212),
                    title: const Center(
                      child: Text(
                        'Dukaan Premium',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 42,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            _createIcon(const Icon(
                              Icons.language,
                              color: Colors.blue,
                            )),
                            Padding(
                                padding: EdgeInsets.only(left: 16.0, top: 4),
                                child: _createColumn('Custom domain name',
                                    '''Get your own custom doamin and build
        your brand on the internet'''))
                          ],
                        ),
                        Row(
                          children: [
                            _createIcon(const Icon(
                              Icons.verified_outlined,
                              color: Colors.blue,
                            )),
                            Padding(
                                padding: EdgeInsets.only(left: 16.0, top: 4),
                                child: _createColumn('Verified seller badge',
                                    '''Get green verified badge under your 
        your store name and build trust'''))
                          ],
                        ),
                        Row(
                          children: [
                            _createIcon(const Icon(
                              Icons.computer,
                              color: Colors.blue,
                            )),
                            Padding(
                                padding: EdgeInsets.only(left: 16.0, top: 4),
                                child: _createColumn('Dukaan for PC',
                                    '''Access all the exclusive premium
        features on Dukaan for PC'''))
                          ],
                        ),
                        Row(
                          children: [
                            _createIcon(const Icon(
                              Icons.headset_mic,
                              color: Colors.blue,
                            )),
                            Padding(
                                padding: EdgeInsets.only(left: 16.0, top: 4),
                                child: _createColumn('Priority support',
                                    '''Get your questions resolved with our
        priority customer support'''))
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    _buildVideoSection(),
                    _buildFaqSection(),
                    _buildContactSection(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildButton(
                            'Select Domain', Colors.white, Colors.blue),
                        SizedBox(
                          width: 10,
                        ),
                        _buildButton('Select Domain', Colors.blue, Colors.white)
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    )
                  ],
                )
              ],
            ),
            Positioned(
              top: 65,
              left: 15,
              right: 15,
              child: Card(
                elevation: 4,
                shape: BeveledRectangleBorder(),
                child: Center(
                  child: Column(
                    children: [
                      Image.asset(
                        fit: BoxFit.fill,
                        'assets/Images/img20.png',
                        width: 130,
                        height: 40,
                      ),
                      const Text(
                        '''Get Dukaan Premium for just
                      ₹4,999/year''',
                        style: TextStyle(fontSize: 16),
                      ),
                      const Text(
                        '''All the advanced features for scaling your
                                buisiness.''',
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildVideoSection() {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(width: 1.0, color: Colors.grey),
        ),
      ),
      child: Card(
        shape: BeveledRectangleBorder(),
        elevation: 0.0,
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('What is Dukaan Premium?',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0)),
              //const SizedBox(height: 8.0),
              Container(
                color: Colors.blue,
                height: 120,
                child: Center(
                  child: YoutubePlayer(
                    controller: _youtubeController,
                    showVideoProgressIndicator: true,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFaqSection() {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(width: 1.0, color: Colors.grey),
        ),
      ),
      child: Card(
        color: Colors.transparent,
        shape: BeveledRectangleBorder(),
        elevation: 0.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Frequently asked questions',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0)),
            //const SizedBox(height: 8.0),
            _buildFaqItem(
                0, 'What types of businesses can use Dukaan Premium?'),
            _buildFaqItem(1, 'What is your refund policy?'),
            _buildFaqItem(
                2, 'Will there be an automatic charge after the paid trial?'),
            _buildFaqItem(3, 'What payment methods do you offer?'),
            _buildFaqItem(4, 'What happens when my free trial ends?'),
            _buildFaqItem(5, 'What are the terms for the custom domain?'),
          ],
        ),
      ),
    );
  }

  Widget _buildFaqItem(int index, String question) {
    return Column(
      children: [
        ExpansionTile(
          title: Text(
            question,
            style: TextStyle(fontSize: 14),
          ),
          trailing: Icon(_expandedStates[index] ? Icons.remove : Icons.add),
          onExpansionChanged: (bool expanded) {
            setState(() {
              _expandedStates[index] = expanded;
            });
          },
          children: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                  'Dukaan caters to a wide variety of sellers. Be it a small grocery store or a big legacy brand - anyone who wants to sell their products/services online Dukaan is the perfect platform for you'),
            ),
          ],
        ),
        const Divider(),
      ],
    );
  }

  Widget _buildContactSection() {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(width: 1.0, color: Colors.grey),
        ),
      ),
      child: Card(
        color: Colors.transparent,
        shape: BeveledRectangleBorder(),
        elevation: 0.0,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Need help? Get in touch',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0)),
              const SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      // color: Color.fromARGB(255, 180, 201, 218)
                    ),
                    width: 150,
                    height: 50,
                    alignment: Alignment.center,
                    child: const Column(
                      children: [
                        Icon(Icons.chat, color: Colors.blue),
                        SizedBox(height: 4.0),
                        Text('Live Chat'),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      // color: Color.fromARGB(255, 180, 201, 218)
                    ),
                    width: 150,
                    height: 50,
                    alignment: Alignment.center,
                    child: const Column(
                      children: [
                        Icon(Icons.phone, color: Colors.blue),
                        SizedBox(height: 4.0),
                        Text('Phone Call'),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  _createIcon(Icon icon) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, top: 4),
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width: 1.0, color: Colors.blue),
          color: Colors.transparent,
        ),
        child: icon,
      ),
    );
  }

  Widget _buildButton(String text, Color color, Color color1) {
    return SizedBox(
        height: 30,
        width: 150,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              backgroundColor: color),
          onPressed: () {},
          child: Text(
            text,
            style: TextStyle(color: color1),
          ),
        ));
  }

  _createColumn(String text1, String text2) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text1,
            style: TextStyle(
                color: Color.fromARGB(255, 12, 12, 12), fontSize: 14)),
        Text(
          text2,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
        )
      ],
    );
  }
}
