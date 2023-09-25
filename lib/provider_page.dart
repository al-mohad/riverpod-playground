import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider_page.g.dart';

// final valueProvider = Provider<int>((ref) => 6000665);

@riverpod
String nameProvider(NameProviderRef ref) => 'hello almohad';

class ProviderPage extends ConsumerWidget {
  const ProviderPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider'),
      ),
      // body: Consumer(builder: (context, ref, c) {
      //   return Center(
      //     child: Text(
      //       'The value is: ${ref.watch(valueProvider)}',
      //       style: const TextStyle(fontSize: 35),
      //     ),
      //   );
      // }),
      body: Center(
        child: Text(
          'The value is: ${ref.watch(nameProviderProvider)}',
          style: const TextStyle(fontSize: 35),
        ),
      ),
    );
  }
}
