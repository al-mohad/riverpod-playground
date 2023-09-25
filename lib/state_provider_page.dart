import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// final valueStateProvider = StateProvider<int>((ref) => 6000665);
final valueStateProvider = StateProvider.autoDispose<int>((ref) => 0);

class StateProviderPage extends ConsumerWidget {
  const StateProviderPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<int>(valueStateProvider, (p, c) {
      print('previous: $p, current: $c');
      if (c == 5) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Whooohooo!')),
        );
      }
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text('State Provider'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'The value is: ${ref.watch(valueStateProvider)}',
              style: const TextStyle(fontSize: 35),
            ),
            ElevatedButton(
              onPressed: () {
                ref.read(valueStateProvider.notifier).state++;
              },
              child: const Text('Add 1'),
            ),
            ElevatedButton(
              onPressed: () {
                ref.invalidate(valueStateProvider);
              },
              child: const Text('Reset'),
            )
          ],
        ),
      ),
    );
  }
}
