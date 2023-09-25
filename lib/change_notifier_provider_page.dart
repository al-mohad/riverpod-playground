import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_playground/data/cart_notifier.dart';
import 'package:riverpod_playground/models/product.dart';

class ChangeNotifierProviderPage extends ConsumerWidget {
  const ChangeNotifierProviderPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartNotifier = ref.watch(cartNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Change Notifier Provider'),
        actions: [
          Stack(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart),
              ),
              Align(
                alignment: Alignment.topRight,
                child: CircleAvatar(
                  radius: 10,
                  child: Center(
                    child: Text('${cartNotifier.cart.length}'),
                  ),
                ),
              ),
            ],
          )
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
                ref.read(cartNotifierProvider.notifier).addToCart(product);
              },
              icon: const Icon(Icons.shopping_cart),
            ),
          );
        },
      ),
    );
  }
}
