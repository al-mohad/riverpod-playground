import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_playground/models/suggestion.dart';
import 'package:riverpod_playground/services/api_service.dart';

final suggestionFutureProvider =
    FutureProvider.autoDispose.family<Suggestion, String>((ref, id) async {
  final apiService = ref.watch(apiServiceProvider);
  return apiService.getSuggestion(id);
});

class FutureProviderPage extends ConsumerWidget {
  const FutureProviderPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final suggestionRef = ref.watch(suggestionFutureProvider('1'));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Future Provider'),
      ),
      body: RefreshIndicator(
        onRefresh: () => ref.refresh(suggestionFutureProvider('1').future),
        child: ListView(
          children: [
            Center(
              child: suggestionRef.when(
                data: (data) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    data.activity,
                    style: const TextStyle(fontSize: 22),
                  ),
                ),
                error: (e, s) => Text('$e, $s'),
                loading: () => const CircularProgressIndicator(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
