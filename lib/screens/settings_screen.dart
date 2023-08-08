import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ListTile(
          title: Text('\$'),
        ),
        ListTile(
          title: Text('Dark mode'),
        ),
        ListTile(
          title: Text('About'),
        ),
        ListTile(
          title: Text('Rate us'),
        ),
      ],
    );
  }
}
