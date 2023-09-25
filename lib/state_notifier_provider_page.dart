import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_playground/data/cart_state_notifier.dart';

import 'models/product.dart';

class StateNotifierProviderPage extends ConsumerWidget {
  const StateNotifierProviderPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cart = ref.watch(cartStateNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('State Notifier Provider'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '${cart.length}',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: sampleProducts.length,
        itemBuilder: (c, i) {
          final product = sampleProducts.elementAt(i);
          return ListTile(
            leading: Text('\u20a6${product.price}'),
            title: Text(product.name),
            subtitle: Text(
              product.description,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            trailing: IconButton(
              onPressed: () {
                ref
                    .read(cartStateNotifierProvider.notifier)
                    .addProduct(product);
              },
              icon: const Icon(Icons.shopping_cart),
            ),
          );
        },
      ),
    );
  }
}
