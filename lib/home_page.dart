import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_playground/change_notifier_provider_page.dart';
import 'package:riverpod_playground/future_provider_page.dart';
import 'package:riverpod_playground/provider_page.dart';
import 'package:riverpod_playground/state_notifier_provider_page.dart';
import 'package:riverpod_playground/state_provider_page.dart';
import 'package:riverpod_playground/stream_provider_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod Playground'),
      ),
      body: ListView(
        children: [
          ListTile(
            onTap: () => Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (builder) => const ProviderPage(),
              ),
            ),
            leading: const CircleAvatar(child: Text('1')),
            title: const Text('Provider'),
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
          ),
          ListTile(
            onTap: () => Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (builder) => const StateProviderPage(),
              ),
            ),
            leading: const CircleAvatar(child: Text('2')),
            title: const Text('State Provider'),
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
          ),
          ListTile(
            onTap: () => Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (builder) => const FutureProviderPage(),
              ),
            ),
            leading: const CircleAvatar(child: Text('3')),
            title: const Text('Future Provider'),
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
          ),
          ListTile(
            onTap: () => Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (builder) => const StreamProviderPage(),
              ),
            ),
            leading: const CircleAvatar(child: Text('4')),
            title: const Text('Streeam Provider'),
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
          ),
          ListTile(
            onTap: () => Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (builder) => const ChangeNotifierProviderPage(),
              ),
            ),
            leading: const CircleAvatar(child: Text('5')),
            title: const Text('Change Notifier Provider'),
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
          ),
          ListTile(
            onTap: () => Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (builder) => const StateNotifierProviderPage(),
              ),
            ),
            leading: const CircleAvatar(child: Text('6')),
            title: const Text('State Notifier Provider'),
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
          ),
          ListTile(
            onTap: () => Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (builder) => const StateNotifierProviderPage(),
              ),
            ),
            leading: const CircleAvatar(child: Text('7')),
            title: const Text('Firebase Authentication'),
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
          ),
        ],
      ),
    );
  }
}
