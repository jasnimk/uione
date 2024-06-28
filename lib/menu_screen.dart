import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Screen'),
        backgroundColor: const Color.fromARGB(255, 218, 207, 204),
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _createButton(context, 'UI One', '/first'),
            _createButton(context, 'UI Two', '/second'),
            _createButton(context, 'UI Three', '/third'),
            _createButton(context, 'UI Four', '/fourth'),
            _createButton(context, 'UI Five', '/fifth'),
            _createButton(context, 'UI Six', '/sixth')
          ],
        ),
      )),
    );
  }

  _createButton(BuildContext context, String name, String pathName) {
    return Column(
      children: [
        SizedBox(
          width: 150,
          height: 40,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, pathName);
            },
            style: ElevatedButton.styleFrom(
                shape: const BeveledRectangleBorder(),
                backgroundColor: Color.fromARGB(255, 218, 207, 204)),
            child: Text(
              name,
              style: const TextStyle(color: Colors.black),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
