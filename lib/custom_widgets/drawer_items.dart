import 'package:flutter/material.dart';

class DrawerItems extends StatelessWidget {
  const DrawerItems({super.key, required this.ontap});

  final void Function(String activeScreen) ontap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        ListTile(
          leading: const Icon(
            Icons.settings,
            size: 30,
          ),
          title: const Text(
            'Setting',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          onTap: () {
            ontap('setting');
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.info_outline,
            size: 30,
          ),
          title: const Text(
            'About',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          onTap: () {
            ontap('about');
          },
        ),
      ],
    );
  }
}
