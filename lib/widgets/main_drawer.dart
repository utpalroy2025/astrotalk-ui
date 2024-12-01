import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {


  const MainDrawer({super.key, });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Theme.of(context).colorScheme.primaryContainer,
                  Theme.of(context)
                      .colorScheme
                      .primaryContainer
                      .withOpacity(0.8),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Row(
              children: [
                const Icon(Icons.person, size: 40),
                const SizedBox(width: 10),
                Text(
                  'Welcome!',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home, size: 26),
            title: const Text('Home'),

          ),
          ListTile(
            leading: const Icon(Icons.chat, size: 26),
            title: const Text('Chat'),

          ),
          ListTile(
            leading: const Icon(Icons.live_tv, size: 26),
            title: const Text('Live'),

          ),
          ListTile(
            leading: const Icon(Icons.call, size: 26),
            title: const Text('Call'),

          ),
          ListTile(
            leading: const Icon(Icons.help_center, size: 26),
            title: const Text('Pray'),

          ),
        ],
      ),
    );
  }
}
