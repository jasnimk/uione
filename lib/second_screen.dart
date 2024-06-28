import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  bool isSwitched = false;
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
            'Additional Information',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  _createRow(
                    icon: const Icon(Icons.share),
                    text: 'Share Dukaan App',
                    trailing: const Icon(Icons.arrow_forward_ios_rounded),
                  ),
                  _createRow(
                    icon: const Icon(Icons.language),
                    text: 'Change Language',
                    trailing: const Icon(Icons.arrow_forward_ios_rounded),
                  ),
                  _createRow(
                      icon: const FaIcon(FontAwesomeIcons.whatsapp),
                      text: 'WhatsApp Chat Support',
                      trailing: Switch(
                        value: isSwitched,
                        onChanged: (bool value) {
                          setState(() {
                            isSwitched = value;
                          });
                        },
                        activeColor: Colors.blue,
                      )),
                  _createRow(
                    icon: const Icon(Icons.lock),
                    text: 'Privacy Policy',
                  ),
                  _createRow(
                    icon: const Icon(Icons.star),
                    text: 'Rate Us',
                  ),
                  _createRow(
                    icon: const Icon(Icons.exit_to_app),
                    text: 'Sign Out',
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Version\n2.4.2',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _createRow(
    {required Widget icon, required String text, Widget? trailing}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: [
        icon,
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(fontSize: 20),
          ),
        ),
        if (trailing != null) trailing,
      ],
    ),
  );
}
